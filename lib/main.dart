import 'package:calclulator/features/calclulator/screens/calclulator_screen.dart';
import 'package:calclulator/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CAAppTheme.lightTheme,
      darkTheme: CAAppTheme.darkTheme,
      home: const CalculatorScreen(),
    );
  }
}
