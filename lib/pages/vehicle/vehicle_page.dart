import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satellite/pages/vehicle/vehicle_list.dart';
import '../../design/styles.dart';
import "/design/colors.dart";
import "/design/dimensions.dart";

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toolbar kiparo.com',
          style: primaryTextStyle ),
        centerTitle: true,
        backgroundColor: SurfacevColor,
      ),
      body: Container(
        color: BackgroundColor,
        child: const VehicleList(),
      ),
    );
  }
}
