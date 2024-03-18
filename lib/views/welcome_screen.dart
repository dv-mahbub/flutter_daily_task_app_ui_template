import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/background.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/custom_button.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_functions.dart/navigate.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/string.dart';
import 'package:flutter_daily_task_app_ui_template/views/regirster_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            const Spacer(
              flex: 6,
            ),
            Image.asset(
              onboardImage,
              width: 130,
              fit: BoxFit.fitWidth,
            ),
            const Spacer(flex: 1),
            const Text(
              'Get things done with TODo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(flex: 1),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames lectus fermentum ultrices ipsum ornare id lorem vestibulum, congue. Quis nulla vel consectetur ultrices. Nulla est faucibus mollis faucibus sed libero amet. Facilisis ut arcu facilisis egestas iaculis nec sit. Donec adipiscing ac massa egestas.',
              textAlign: TextAlign.justify,
            ),
            const Spacer(flex: 1),
            CustomButton(
              text: 'Get Started',
              onTap: () {
                navigate(context: context, child: const RegisterScreen());
              },
            ),
            const Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}
