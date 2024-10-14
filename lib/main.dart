import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/location_provider.dart'; // Adjust the path if necessary
import 'screens/location_input_screen.dart'; // Adjust the path if necessary

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocationProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Map App',
      home: LocationInputScreen(), // Check this line for issues
    );
  }
}
