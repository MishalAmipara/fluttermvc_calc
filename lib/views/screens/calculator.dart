import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_get_calculator/controllers/calculator_controller.dart';
import 'package:mvc_get_calculator/views/widgets/calculator_button.dart';
import 'package:mvc_get_calculator/views/widgets/calculator_display.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController ctrl = Get.put(CalculatorController());

    return Scaffold(
      body: Column(
        children: [
          Obx(() => CalculatorDisplay(ctrl.display)),
          Expanded(
            child: GridView.builder(
              itemCount: ctrl.buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return CalculatorButton(
                  onTap: () {
                    ctrl.buttonClicked(index);
                  },
                  buttonModel: ctrl.buttons[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
