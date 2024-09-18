import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quick_h/utilities/get_location.dart'; // Ensure you have the correct import path for get_location.dart

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition? _cameraPosition; // Initially set to null
  List<Marker> _marker = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocationAndSetMarker(); // Fetch current location and update marker
  }

  Future<void> _getCurrentLocationAndSetMarker() async {
    Location location = Location();
    Position? currentPosition = await location.getCurrentLocation();

    if (currentPosition != null) {
      setState(() {
        // Update the camera position to the current location
        _cameraPosition = CameraPosition(
          target: LatLng(currentPosition.latitude, currentPosition.longitude),
          zoom: 15,
        );

        // Update the marker to the current location
        _marker = [
          Marker(
            markerId: MarkerId('current_location'),
            position: LatLng(currentPosition.latitude, currentPosition.longitude),
            infoWindow: const InfoWindow(
              title: 'Current Location',
            ),
          ),
        ];
      });

      // Move the camera to the current position
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition!));
    } else {
      print("Unable to fetch location");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _cameraPosition == null
            ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching location
            : GoogleMap(
          initialCameraPosition: _cameraPosition!,
          myLocationEnabled: true,
          markers: Set.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getCurrentLocationAndSetMarker(); // Re-fetch location when button is pressed
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
