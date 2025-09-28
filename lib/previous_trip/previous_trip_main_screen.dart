import 'dart:ui' as ui;
import 'previous_trip_loading_indicator.dart';
import 'previous_trip_user_data.dart';
import 'package:flutter/material.dart';

class PreviousTripMainScreen extends StatefulWidget {
  PreviousTripMainScreen({super.key});
  @override
  _PreviousTripMainScreenState createState() => _PreviousTripMainScreenState();
}

class _PreviousTripMainScreenState extends State<PreviousTripMainScreen> {

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(42, 0, 42, 200),
      child: TextButton(
        onPressed: () {
          PreviousTripLoadingIndicator.show();
          PreviousTripUserData.instance.initiateLogin();
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 84,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            "Quick login",
            style: TextStyle(color: Colors.redAccent, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(40, 13, 20, 1), Colors.black],
                stops: [0.0, 0.5],
              ),
            ),
          ),
          _buildLoginButton(context),
        ],
      ),
    );
  }
}

