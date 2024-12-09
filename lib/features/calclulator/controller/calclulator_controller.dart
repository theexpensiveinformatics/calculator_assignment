import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CalculatorController extends GetxController {
  /// -- Variables
  final firstNumber = TextEditingController();
  final secondNumber = TextEditingController();
  final answer = TextEditingController();
  final thought = ''.obs; // Observed variable for the quote
  final isLoading = true.obs; // Observed variable for loading state

  /// -- Constructor
  CalculatorController() {
    firstNumber.addListener(_updateCalculation);
    secondNumber.addListener(_updateCalculation);
    fetchThought(); // Fetch the thought when the controller is created
  }

  /// -- Fetch a random thought
  Future<void> fetchThought() async {
    try {
      isLoading.value = true; // Set loading to true
      final response = await http.get(Uri.parse('https://zenquotes.io/api/random'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        thought.value = data[0]['q'] ?? 'No thought available'; // Update with the fetched thought
      } else {
        thought.value = 'Oops! Something went wrong,\nPlease check your connection and try again.';
      }
    } catch (e) {
      thought.value = 'Oops! Something went wrong,\nPlease check your connection and try again.';
    } finally {
      isLoading.value = false; // Set loading to false
    }
  }

  /// -- Calculate addition automatically
  void _updateCalculation() {
    final num1 = int.tryParse(firstNumber.text) ?? 0;
    final num2 = int.tryParse(secondNumber.text) ?? 0;
    final sum = num1 + num2;
    answer.text = sum.toString();
  }

  @override
  void onClose() {
    firstNumber.dispose();
    secondNumber.dispose();
    answer.dispose();
    super.onClose();
  }
}
