import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetMapPage extends StatefulWidget {
  const SetMapPage({Key? key}) : super(key: key);

  @override
  State<SetMapPage> createState() => _SetMapPageState();
}

class _SetMapPageState extends State<SetMapPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(46.73200184013239, -117.1542125881912);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
      ),
    );
  }
}
