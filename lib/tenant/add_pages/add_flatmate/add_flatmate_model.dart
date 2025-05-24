import '/components/add_flatmate_c_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_flatmate_widget.dart' show AddFlatmateWidget;
import 'package:flutter/material.dart';

class AddFlatmateModel extends FlutterFlowModel<AddFlatmateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for add_flatmate_C component.
  late AddFlatmateCModel addFlatmateCModel;

  @override
  void initState(BuildContext context) {
    addFlatmateCModel = createModel(context, () => AddFlatmateCModel());
  }

  @override
  void dispose() {
    addFlatmateCModel.dispose();
  }
}
