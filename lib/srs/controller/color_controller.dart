import 'package:mobx/mobx.dart';
import 'package:shopping/srs/controller/icon_controller.dart';
part 'color_controller.g.dart';

class ColorController = ControllerBase with _$ColorController;

abstract class ControllerBase with Store {
  @observable
  String text = "";

  @action
  mudarText(String newText) {
    text = newText;
  }
}
