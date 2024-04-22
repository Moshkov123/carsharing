import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satellite/design/colors.dart';
import 'package:satellite/design/dimensions.dart';
import 'package:satellite/design/images.dart';
import 'package:satellite/design/styles.dart';

class DriverItem extends StatelessWidget {
  final String driverName;
  final bool isSelected;

  final Function() onTap;

  const DriverItem(
      {super.key,
      required this.onTap,
      required this.driverName,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        margin: EdgeInsets.zero,
        color: SurfacevColor,
        elevation: 0.06,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(
                left: padding8, right: padding16, top: padding8),
            child: Row(children: <Widget>[
              accountImage,
              const SizedBox(
                width: height16,
              ),
              Expanded(

                child: Text(driverName, style: hint1TextStyle,maxLines: 2, overflow: TextOverflow.ellipsis,),
              ),
              const SizedBox(
                width: height16,
              ),
              if (isSelected) checkImage
            ]),
          ),
        ),
      ),
    );
  }
}
