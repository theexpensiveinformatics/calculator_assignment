import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../controller/calclulator_controller.dart';

class ThoughtWidget extends StatelessWidget {
  ThoughtWidget({super.key});
  final CalculatorController controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Text('Loading...'),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Text(controller.thought.value, textAlign: TextAlign.center),
        );
      }
    });
  }
}
