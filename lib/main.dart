import 'package:budget_app/constants/app_strings.dart';
import 'package:budget_app/functions/general_ui_functions.dart';
import 'package:budget_app/pages/home_page.dart';
import 'package:budget_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setUISystemOverlayStyle();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: theme,
      home: const HomePage(),
    );
  }
}
