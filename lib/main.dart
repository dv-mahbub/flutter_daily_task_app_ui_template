import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_daily_task_app_ui_template/components/global_variables/color.dart';
import 'package:flutter_daily_task_app_ui_template/views/splash_screen.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _buildTheme(Brightness.light),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
        colorScheme: ColorScheme.light(background: lightBackgroundColor));

    return baseTheme.copyWith(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        bodyLarge: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        bodySmall: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        titleSmall: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        titleMedium: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        titleLarge: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        displayLarge: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        displayMedium: TextStyle(fontFamily: 'marcellus', color: Colors.black),
        displaySmall: TextStyle(fontFamily: 'marcellus', color: Colors.black),
      ),
    );
  }
}
