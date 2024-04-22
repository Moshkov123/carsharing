import 'package:flutter/material.dart';
import 'package:satellite/pages/vehicle/vehicle_page.dart';
import 'pages/vehicle/vehicle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiparo dispatcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VehiclePage(),
    );
  }
}
