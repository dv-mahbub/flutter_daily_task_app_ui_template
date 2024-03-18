import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_functions.dart/navigate.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/string.dart';
import 'package:flutter_daily_task_app_ui_template/views/welcome_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      navigate(context: context, child: const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepBackgroundColor,
      body: Center(
        child: SizedBox(width: 150, child: Lottie.asset(loadingFile)),
      ),
    );
  }
}
