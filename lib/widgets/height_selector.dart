import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class HeightSelector extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;
  const HeightSelector({super.key, required this.height, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Height (CM)",
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            Text(
              height.toInt().toString(),
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
            Slider(
              value: height,
              min: 50,
              max: 300,
              onChanged: onChanged,
              activeColor: AppColors.primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("50 cm",style: TextStyle(fontSize: 14),),
                  Text("300 cm",style: TextStyle(fontSize: 14),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
