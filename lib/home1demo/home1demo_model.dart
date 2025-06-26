import '/components/flatmate_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home1demo_widget.dart' show Home1demoWidget;
import 'package:flutter/material.dart';

class Home1demoModel extends FlutterFlowModel<Home1demoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for flatmate_component component.
  late FlatmateComponentModel flatmateComponentModel;

  @override
  void initState(BuildContext context) {
    flatmateComponentModel =
        createModel(context, () => FlatmateComponentModel());
  }

  @override
  void dispose() {
    flatmateComponentModel.dispose();
  }
}
