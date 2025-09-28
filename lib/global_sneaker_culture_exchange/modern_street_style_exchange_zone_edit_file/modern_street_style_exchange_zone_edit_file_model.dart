import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_form.dart';
import 'modern_street_style_exchange_zone_edit_file_widget.dart'
    show ModernStreetStyleExchangeZoneEditFileWidget;
import 'package:flutter/material.dart';

class ModernStreetStyleExchangeZoneEditFileModel
    extends LimitedEditionViberaModel<
        ModernStreetStyleExchangeZoneEditFileWidget> {
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;

  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
