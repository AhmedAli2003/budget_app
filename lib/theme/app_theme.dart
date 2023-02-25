import 'package:budget_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  primarySwatch: AppColors.primaryColor,
  splashColor: AppColors.splashColor,
  highlightColor: AppColors.highlightColor,
  textTheme: const TextTheme(
    titleSmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
    bodyMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
    ),
  ),
);
