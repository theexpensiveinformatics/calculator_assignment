import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/calclulator_controller.dart';

class ClaclulatorWidget extends StatelessWidget {
  ClaclulatorWidget({super.key});
  final CalculatorController controller = Get.find<CalculatorController>();


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///-- First number input
        SizedBox(
          width: 60,
          child: TextField(
            controller: controller.firstNumber,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: '0'),
          ),
        ),

        ///-- "+" symbol
        const Text('  +  '),

        ///-- Second number input
        SizedBox(
          width: 60,
          child: TextField(
            controller: controller.secondNumber,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: '0'),
          ),
        ),

        ///-- "=" symbol
        const Text('  =  '),

        ///-- Answer display
        SizedBox(
          width: 100,
          child: TextField(
            controller: controller.answer,
            readOnly: true,
            decoration: const InputDecoration(hintText: '0'),
          ),
        ),
      ],
    );
  }
}
