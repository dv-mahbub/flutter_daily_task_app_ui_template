import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/string.dart';

class CustomBody extends StatelessWidget {
  final Widget child;
  const CustomBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          backgroundAsset,
        ),
        opacity: .5,
        fit: BoxFit.none, // Prevent image scaling
        alignment: Alignment.topLeft,
      )),
      child: child,
    );
  }
}
