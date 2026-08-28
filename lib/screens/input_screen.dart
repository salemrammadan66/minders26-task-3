import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/widgets/gender_selection_card.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 54, left: 120, right: 120,bottom: 42),
              child: Text(
                "BMI CALCULATOR",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
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
            )
          ],
        ),
      ),
    );
  }
}
