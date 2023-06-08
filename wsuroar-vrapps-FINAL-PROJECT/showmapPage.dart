import 'package:flutter/material.dart';

class showMap extends StatefulWidget {


  @override
  State<showMap> createState() => _showMapState();
}

class _showMapState extends State<showMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Page"),
        centerTitle: true,
      ),



    );
  }
}