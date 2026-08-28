import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class GenderSelectionCard extends StatelessWidget {
  final Icon gender;
  final String genderText;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderSelectionCard({
    super.key,
    required this.gender,
    required this.genderText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 185,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.white,
            width: 3,
          ),
        ),
        child: Column(
          children: [
            Icon(
              gender.icon,
              size: 120,
              color: AppColors.secondaryColor,
            ),
            Text(
              genderText,
              style: TextStyle(color: AppColors.secondaryColor, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
