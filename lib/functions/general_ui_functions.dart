import 'package:budget_app/theme/app_colors.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle, Brightness;

void setUISystemOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.statusBarColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.primaryColor,
    ),
  );
}
