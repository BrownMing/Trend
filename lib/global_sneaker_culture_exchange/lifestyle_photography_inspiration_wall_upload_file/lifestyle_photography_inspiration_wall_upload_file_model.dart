import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_form.dart';
import 'lifestyle_photography_inspiration_wall_upload_file_widget.dart'
    show LifestylePhotographyInspirationWallUploadFileWidget;
import 'package:flutter/material.dart';

class LifestylePhotographyInspirationWallUploadFileModel
    extends LimitedEditionViberaModel<
        LifestylePhotographyInspirationWallUploadFileWidget> {
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;

  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  String? globalStreetwearInspirationCollective;
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
