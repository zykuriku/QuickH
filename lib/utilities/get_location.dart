import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0.0;
  double longitude = 0.0;

  Future<Position?> getCurrentLocation() async {
    LocationPermission permission;
    try {
      Position position = await Geolocator.getCurrentPosition(
        forceAndroidLocationManager: true,
        desiredAccuracy: LocationAccuracy.high,
      );

      latitude = position.latitude;
      longitude = position.longitude;

      return position;
    } catch (e) {
      permission = await Geolocator.checkPermission();
      print('Checking permission');
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        print('Requesting permission');
      }

      // If permission is denied, return null or handle accordingly
      if (permission == LocationPermission.deniedForever) {
        print('Location permissions are permanently denied.');
        return null;
      }
    }
    return null;
  }
}
