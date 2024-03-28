import '/flutter_flow/flutter_flow_util.dart';
import 'roshn_business_front_widget.dart' show RoshnBusinessFrontWidget;
import 'package:flutter/material.dart';

class RoshnBusinessFrontModel
    extends FlutterFlowModel<RoshnBusinessFrontWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
