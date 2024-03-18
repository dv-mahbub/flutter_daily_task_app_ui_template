import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_functions.dart/navigate.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/background.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/custom_button.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/custom_field.dart';
import 'package:flutter_daily_task_app_ui_template/views/home_screen.dart';
import 'package:flutter_daily_task_app_ui_template/views/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 8,
          ),
          const Text(
            'Welcome Onboard',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'Let’s help you meet up your tasks',
            style: TextStyle(fontSize: 15),
          ),
          const Spacer(
            flex: 2,
          ),
          const CustomField(hintText: 'Enter your full name'),
          const SizedBox(height: 25),
          const CustomField(hintText: 'Enter email'),
          const SizedBox(height: 25),
          const CustomField(hintText: 'Enter password'),
          const SizedBox(height: 25),
          const CustomField(hintText: 'Confirm password'),
          const Spacer(
            flex: 2,
          ),
          CustomButton(
            text: 'Register',
            onTap: () {
              navigate(context: context, child: const HomeScreen());
            },
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account? '),
              InkWell(
                onTap: () {
                  navigate(context: context, child: const LoginScreen());
                },
                child: Text(
                  'sign in',
                  style: TextStyle(color: primaryColor),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      )),
    );
  }
}
