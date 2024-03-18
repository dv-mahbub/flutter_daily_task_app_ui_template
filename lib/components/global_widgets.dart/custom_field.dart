import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';

class CustomField extends StatefulWidget {
  final String hintText;

  const CustomField({super.key, required this.hintText});

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      height: 45,
      width: screenWidth * .8,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero),
        ),
      ),
    );
  }
}
