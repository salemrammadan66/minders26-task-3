import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class NumberSelector extends StatelessWidget { //ملقيتلهوش اسم سميته كده و خلاص
  final String title;
  final int value;
  final int min;
  final int max;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const NumberSelector({
    super.key,
    required this.title,
    required this.min,
    required this.max,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 165,
      height: 185,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: value > min ? onDecrement : null,
                    icon: Icon(Icons.exposure_minus_1, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: value < max ? onIncrement : null,
                    icon: Icon(Icons.plus_one, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.secondaryColor,
                      ),
                    ),
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
