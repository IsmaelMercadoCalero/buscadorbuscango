import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googlemaps extends StatefulWidget {
  @override
  State<googlemaps> createState() => _googlemapsState();
}

class _googlemapsState extends State<googlemaps> {
  late GoogleMapController mapController;

  final LatLng _center = LatLng(37.76288188596173, -3.9451906125291365);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 20.0,
      ),
    );
  }
}
