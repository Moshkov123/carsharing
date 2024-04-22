import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satellite/pages/vehicle/vehicle_list.dart';
import '../../design/images.dart';
import '../../design/styles.dart';
import "/design/colors.dart";
import "/design/dimensions.dart";
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select driver',
          style: primaryTextStyle ),
        centerTitle: true,
        backgroundColor: SurfacevColor,
        leading: IconButton(icon: arrowImage, onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Container(
        color: BackgroundColor,
        child: const DriverList(),
      ),
    );
  }
}
