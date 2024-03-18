import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(25),
      color: primaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        highlightColor:
            lightPrimaryColor, // Change to your desired highlight color
        splashColor: lightPrimaryColor, // Change to your desired splash color
        onTap: onTap,
        child: Container(
          height: 50,
          width: screenWidth * .8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
