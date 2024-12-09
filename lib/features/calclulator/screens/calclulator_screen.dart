import 'package:calclulator/features/calclulator/screens/widgets/calclulator/claclulator_widget.dart';
import 'package:calclulator/features/calclulator/screens/widgets/thought/thought_widget.dart';
import 'package:calclulator/utils/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/calclulator_controller.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: RefreshIndicator(
        onRefresh: controller.fetchThought,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          /// --  Allow pull-to-refresh even if content is short
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: CASizes.spaceBtwSections*2, width: double.infinity),

              /// -- Thought Section
              ThoughtWidget(),
              const SizedBox(height: CASizes.spaceBtwSections, width: double.infinity),

              /// -- Calculation part
              ClaclulatorWidget(),
              const SizedBox(height: CASizes.spaceBtwSections, width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}
