import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lifestyle_photography_inspiration_wall_upload_file_widget.dart'
    show LifestylePhotographyInspirationWallUploadFileWidget;
import 'package:flutter/material.dart';

class LifestylePhotographyInspirationWallUploadFileModel
    extends FlutterFlowModel<
        LifestylePhotographyInspirationWallUploadFileWidget> {

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
