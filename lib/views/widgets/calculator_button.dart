import 'package:flutter/material.dart';
import 'package:mvc_get_calculator/models/button_model.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.buttonModel,
    this.onTap,
  });

  final ButtonModel buttonModel;
  final void Function()? onTap  ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: buttonModel.buttonType == ButtonType.operator
                ? Colors.orange
                : Colors.grey.shade600,
            shape: BoxShape.circle),
        alignment: Alignment.center,
        child: Text(
          buttonModel.value,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
