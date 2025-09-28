import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class PreviousTripEntryPoint extends StatefulWidget {
  PreviousTripEntryPoint({super.key});
  @override
  _PreviousTripEntryPointState createState() => _PreviousTripEntryPointState();
}

class _PreviousTripEntryPointState extends State<PreviousTripEntryPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/trend_sdgfiusdfiyadygit_eyufidgftustdg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

