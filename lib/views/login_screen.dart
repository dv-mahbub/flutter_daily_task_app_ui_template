import 'package:flutter/material.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_functions.dart/navigate.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/string.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/background.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/custom_button.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_widgets.dart/custom_field.dart';
import 'package:flutter_daily_task_app_ui_template/views/regirster_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(
          child: Column(
        children: [
          Spacer(flex: 12),
          Text(
            'Welcome Back!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 1),
          Image.asset(
            loginImage,
            width: 150,
            fit: BoxFit.fitWidth,
          ),
          Spacer(flex: 3),
          CustomField(hintText: 'Enter email'),
          const SizedBox(height: 15),
          CustomField(hintText: 'Enter Password'),
          Spacer(flex: 2),
          InkWell(
            onTap: () {},
            child: Text(
              'Forget Password',
              style: TextStyle(color: primaryColor),
            ),
          ),
          Spacer(flex: 2),
          CustomButton(text: 'Login', onTap: () {}),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account? '),
              InkWell(
                onTap: () {
                  navigate(context: context, child: const RegisterScreen());
                },
                child: Text(
                  'sign up',
                  style: TextStyle(color: primaryColor),
                ),
              )
            ],
          ),
          Spacer(flex: 2),
        ],
      )),
    );
  }
}
