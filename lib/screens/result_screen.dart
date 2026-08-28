import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../widgets/custom_button.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({super.key, required this.bmi});

  static const List<MapEntry<String, Color>> _rows = [
    MapEntry('Underweight: BMI less than 18.5', AppColors.underWeightColor),
    MapEntry('Normal weight: BMI 18.5 to 24.9', AppColors.normalBMIColor),
    MapEntry('Overweight: BMI 25 to 29.9', AppColors.overWeightIColor),
    MapEntry('Obesity: 30 to 40', AppColors.obesityColor),
  ];

  @override
  Widget build(BuildContext context) {
    String label;
    Color color;
    if (bmi < 18.5) {
      label = 'Underweight';
      color = AppColors.underWeightColor;
    } else if (bmi < 25) {
      label = 'Normal';
      color = AppColors.normalBMIColor;
    } else if (bmi < 30) {
      label = 'Overweight';
      color = AppColors.overWeightIColor;
    } else {
      label = 'Obesity';
      color = AppColors.obesityColor;
    }

    final parts = bmi.toStringAsFixed(2).split('.');

    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 54),
            child: Column(
              children: [
                const Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 70),
                const Text(
                  "Body Mass Index",
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: double.infinity,
                    height: 415,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "BMI Results",
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              parts[0],
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 140,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '.${parts[1]}',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 45,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '${label.toUpperCase()} BMI',
                          style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Column(
                          children: _rows
                              .map(
                                (row) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    row.key,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: row.value,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomButton(
                    text: "Re-Calculate",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
