import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 54),
            child: Column(
              children: [
                Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 70,),
                Text(
                  "Body Mass Index",
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 45,),
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
                        Text(
                          "BMI Results",
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "22",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 140,
                          ),
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
