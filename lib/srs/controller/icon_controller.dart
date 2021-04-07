import 'package:mobx/mobx.dart';

class Controller {
  var iconCheckB = Observable(2);
  var iconCheckM = Observable(0);
  var iconCheckC = Observable(0);

  Action incrementB;
  Action incrementC;
  Action incrementM;

  Controller() {
    incrementB = Action(_incrementB);
    incrementM = Action(_incrementM);
    incrementC = Action(_incrementC);
  }

  _incrementB() {
    iconCheckB.value = iconCheckB.value + 1;
    iconCheckC.value = iconCheckC.value = 0;
    iconCheckM.value = iconCheckM.value = 0;
  }

  _incrementC() {
    iconCheckC.value = iconCheckC.value + 1;
    iconCheckB.value = iconCheckB.value = 0;
    iconCheckM.value = iconCheckM.value = 0;
  }

  _incrementM() {
    iconCheckM.value = iconCheckM.value + 1;
    iconCheckC.value = iconCheckC.value = 0;
    iconCheckB.value = iconCheckB.value = 0;
  }
}
