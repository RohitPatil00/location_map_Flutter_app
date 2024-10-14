import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider with ChangeNotifier {
  String? _currentAddress;

  String? get currentAddress => _currentAddress;

  Future<void> fetchCurrentLocation() async {
    // Get the current location
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    
    // Convert position to address (you can use geocoding here)
    _currentAddress = "${position.latitude}, ${position.longitude}";

    // Notify listeners to update UI
    notifyListeners();
  }
}
