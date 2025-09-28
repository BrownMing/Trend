import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'urban_cool_stream_retro_future_feed_signup_widget.dart'
    show UrbanCoolStreamRetroFutureFeedSignupWidget;
import 'package:flutter/material.dart';

class UrbanCoolStreamRetroFutureFeedSignupModel
    extends LimitedEditionViberaModel<
        UrbanCoolStreamRetroFutureFeedSignupWidget> {
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;

  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  bool isAgreementAccepted = true;
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
