import 'package:get/get.dart';
import 'package:mvc_get_calculator/models/button_model.dart';

class CalculatorController extends GetxController {
  final RxString _display = '0'.obs;

  String get display => _display.value;

  List<ButtonModel> buttons = <ButtonModel>[
    ButtonModel('AC', buttonType: ButtonType.clear),
    ButtonModel('C', buttonType: ButtonType.clear),
    ButtonModel('<-', buttonType: ButtonType.erase),
    ButtonModel('/', buttonType: ButtonType.operator),
    ButtonModel('7', buttonType: ButtonType.digit),
    ButtonModel('8', buttonType: ButtonType.digit),
    ButtonModel('9', buttonType: ButtonType.digit),
    ButtonModel('+', buttonType: ButtonType.operator),
    ButtonModel('4', buttonType: ButtonType.digit),
    ButtonModel('5', buttonType: ButtonType.digit),
    ButtonModel('6', buttonType: ButtonType.digit),
    ButtonModel('-', buttonType: ButtonType.operator),
    ButtonModel('1', buttonType: ButtonType.digit),
    ButtonModel('2', buttonType: ButtonType.digit),
    ButtonModel('3', buttonType: ButtonType.digit),
    ButtonModel('*', buttonType: ButtonType.operator),
    ButtonModel('00', buttonType: ButtonType.digit),
    ButtonModel('.', buttonType: ButtonType.digit),
    ButtonModel('0', buttonType: ButtonType.digit),
    ButtonModel('=', buttonType: ButtonType.equal),
  ];

  void buttonClicked(int index) {
    ButtonModel clickedButton = buttons[index];

    switch (clickedButton.buttonType) {
      case ButtonType.digit:
        _display.value += clickedButton.value;
        break;

      case ButtonType.erase:
        _display.value = _display.value.substring(0, _display.value.length - 1);
        break;

      case ButtonType.clear:
        _display.value = '0';
        break;
      default:
        _display.value = 'Error';
    }
    // if (clickedButton.buttonType == ButtonType.digit) {
    //   _display.value += clickedButton.value;
    // } else if (clickedButton.buttonType == ButtonType.clear) {
    //   _display.value = '0';
    // } else if (clickedButton.buttonType == ButtonType.erase) {
    //   _display.value = _display.value.substring(0, _display.value.length - 1);
    // }
  }
}
