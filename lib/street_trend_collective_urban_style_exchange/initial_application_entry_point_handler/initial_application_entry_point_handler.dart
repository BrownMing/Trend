import 'package:flutter/material.dart';

class InitialApplicationEntryPointHandler extends StatefulWidget {
  const InitialApplicationEntryPointHandler({super.key});

  @override
  State<InitialApplicationEntryPointHandler> createState() =>
      _InitialApplicationEntryPointHandlerState();
}

class _InitialApplicationEntryPointHandlerState extends State<InitialApplicationEntryPointHandler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/images/dfgduifghhuid_xcvbiuygduyfihsauid.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
