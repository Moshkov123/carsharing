import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:satellite/design/colors.dart';
import 'package:satellite/design/widgets/accent_button.dart';
import '../styles.dart';
import "/design/dimensions.dart";

class ErrorDialog extends StatelessWidget {
  final String description;

  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
      child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Упсс...',
                style: head1TextStyle),
            const SizedBox(height: height8),
            Text(description,
                style: body1TextStyle),
            const SizedBox(height: height20),
            Center(
                 child: AccentButton(
                title: 'OK',
                onTap: () {
                  Navigator.pop(context);
                })),
          ],
        ),
      ),
    );
  }
}
