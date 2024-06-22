import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:quick_h/utilities/get_location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {

  Completer<GoogleMapController> _controller= Completer();
  static final CameraPosition _cameraPosition=const CameraPosition(target: LatLng( 28.513531 ,77.007270),
  zoom: 15);

  List<Marker> _marker=[];

  List<Marker> _list=const [
    Marker(markerId: MarkerId('1'),
    position: LatLng(28.513531 ,77.007270),
    infoWindow: InfoWindow(
      title: 'Current location'
    )),


  ];
  
  @override

  void initState()
  {
    super.initState();
    _marker.addAll(_list);


  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _cameraPosition,
          myLocationEnabled: true,
          markers: Set.of(_marker),
          onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
        
          },
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Location location=Location();
          location.getCurrentLocation();
          var latitude=location.latitude;
          var longitude=location.longitude;
        },
      ),
    );
  }
}
