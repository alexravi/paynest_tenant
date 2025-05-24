import '/flutter_flow/flutter_flow_util.dart';
import 'verify_otp_widget.dart' show VerifyOtpWidget;
import 'package:flutter/material.dart';

class VerifyOtpModel extends FlutterFlowModel<VerifyOtpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
