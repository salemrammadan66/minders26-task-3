import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class NumberSelector extends StatefulWidget {//ملقيتلهوش اسم سميته كده و خلاص
  final String title;
  final int min;
  final int max;
  const NumberSelector({super.key, required this.title, required this.min, required this.max});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int counter = 20;

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
              widget.title,
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            Text(
              counter.toString(),
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
                    onPressed: () {
                      setState(() {
                        if(counter>widget.min){
                          counter--;
                        }
                      });
                    },
                    icon: Icon(Icons.exposure_minus_1,color: Colors.white,),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if(counter<=widget.max){
                          counter++;
                        }
                      });
                    },
                    icon: Icon(Icons.plus_one,color: Colors.white,),
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
