import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/number_selector.dart';
import 'package:bmi_calculator/widgets/gender_selection_card.dart';
import 'package:bmi_calculator/widgets/height_selector.dart';
import 'package:flutter/material.dart';

import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String? selectedGender;
  int age = 20;
  int weight = 60;

  void _incrementAge() => setState(() => age++);

  void _decrementAge() => setState(() => age--);

  void _incrementWeight() => setState(() => weight++);

  void _decrementWeight() => setState(() => weight--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 54,
                left: 120,
                right: 120,
                bottom: 42,
              ),
              child: Text(
                "BMI CALCULATOR",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GenderSelectionCard(
                        gender: const Icon(Icons.male),
                        genderText: "Male",
                        isSelected: selectedGender == "Male",
                        onTap: () {
                          setState(() {
                            selectedGender = "Male";
                          });
                        },
                      ),
                      GenderSelectionCard(
                        gender: const Icon(Icons.female),
                        genderText: "Female",
                        isSelected: selectedGender == "Female",
                        onTap: () {
                          setState(() {
                            selectedGender = "Female";
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  HeightSelector(),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NumberSelector(
                        title: "Age",
                        value: age,
                        min: 16,
                        max: 105,
                        onIncrement: _incrementAge,
                        onDecrement: _decrementAge,
                      ),
                      NumberSelector(
                        title: "Weight (KG)",
                        value: weight,
                        min: 30,
                        max: 300,
                        onIncrement: _incrementWeight,
                        onDecrement: _decrementWeight,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  CustomButton(
                    text: "Calculate BMI",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResultScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
