enum ButtonType { digit, operator, equal, clear, erase }

class ButtonModel {
  final String value;
  final ButtonType buttonType;
  ButtonModel(this.value, {required this.buttonType});
}
