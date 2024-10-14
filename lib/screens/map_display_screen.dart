import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:provider/provider.dart';
import 'package:latlong2/latlong.dart';
import '../providers/location_provider.dart';

class MapDisplayScreen extends StatelessWidget {
  const MapDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationProvider = Provider.of<LocationProvider>(context);
    final currentPosition = locationProvider.currentPosition;

    if (currentPosition == null) {
      return const Scaffold(
        body: Center(
          child: Text('No location data available'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Display'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(currentPosition.latitude, currentPosition.longitude),
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(currentPosition.latitude, currentPosition.longitude),
                builder: (ctx) => const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
