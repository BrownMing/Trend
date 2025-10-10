import 'package:flutter/material.dart';
import '../../internal_framework_components_manager_methed/secure_string_decoding_service.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_nanager.dart';
import '../ui_feedback_indicator_widget_manager/ui_feedback_indicator_widget_manager.dart';

class UserAuthenticationFlowEntryScreen extends StatefulWidget {
  const UserAuthenticationFlowEntryScreen({super.key});
  @override
  State<UserAuthenticationFlowEntryScreen> createState() =>
      _UserAuthenticationFlowEntryScreenState();
}

class _UserAuthenticationFlowEntryScreenState
    extends State<UserAuthenticationFlowEntryScreen> {
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
          _p1BuildAuthButton(context),
        ],
      ),
    );
  }

  Widget _p1BuildAuthButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(42, 0, 42, 200),
      child: TextButton(
        onPressed: () {
          UiFeedbackIndicatorWidgetManager.m1Show();
          ApplicationStateAndSessionManager.instance.s1StartLoginFlow();
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 84,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            SecureStringDecodingService.d('U2lnbiBJbg=='),
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
