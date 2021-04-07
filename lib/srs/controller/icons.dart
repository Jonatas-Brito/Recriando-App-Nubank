import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping/srs/controller/icon_controller.dart';

final controller = Controller();

class IconsT {
  final iconForwardB = Observer(builder: (_) {
    return controller.iconCheckB.value == 1 || controller.iconCheckB.value == 2
        ? Icon(Icons.check_circle_outline, size: 30)
        : Icon(Icons.arrow_forward_ios);
  });
  final iconForwardC = Observer(builder: (_) {
    return controller.iconCheckC.value >= 1
        ? Icon(Icons.check_circle_outline, size: 30)
        : Icon(Icons.arrow_forward_ios);
  });
  final iconForwardM = Observer(builder: (_) {
    return controller.iconCheckM.value >= 1
        ? Icon(Icons.check_circle_outline, size: 30)
        : Icon(Icons.arrow_forward_ios);
  });
}
