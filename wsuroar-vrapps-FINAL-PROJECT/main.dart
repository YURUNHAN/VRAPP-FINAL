import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/location_page.dart';
import 'package:flutter_application_1/locationMenuPage.dart';
import 'package:flutter_application_1/picture_page.dart';
import 'package:flutter_application_1/currentlocationselectpage.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/selectCLpage': (context) => ChooseLocation(),
        '/home': (context) => const Home(),
      },
      theme: ThemeData(primarySwatch: Colors.red),
    ));
