# Location Map App

A Flutter application that fetches and displays the user's current location using the device's GPS. The app uses the provider package for state management.

## Table of Contents

- Prerequisites
- Setup
- Running the App
- Dependencies
- License

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Install Flutter on your machine.
- Ensure you have a compatible IDE (e.g., Visual Studio Code or Android Studio).
- Enable Developer Mode on your Windows machine to run desktop applications.
- Ensure your device has location services enabled.

## Setup

1. Clone the repository:
   git clone [https://github.com/yourusername/location_map_app.git](https://github.com/RohitPatil00/Location-Based-Flutter-App/tree/main)
   cd location_map_app

2. Install dependencies:
   Make sure you're in the project directory, then run:
   flutter pub get

3. Update your `dart.flutterSdkPath`:
   Ensure that the `dart.flutterSdkPath` in your VS Code settings points to your Flutter SDK path.

## Running the App

To run the app, execute the following command in your terminal:
flutter run

When prompted, select the device you want to run the app on (Windows, Chrome, or Edge).

## Dependencies

This app uses the following dependencies:

- flutter
- provider
- geolocator
- geocoding
- flutter_map

You can find the latest versions of these packages in the `pubspec.yaml` file.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

Thanks to the Flutter community for their amazing resources and support.
