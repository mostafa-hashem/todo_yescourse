import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider2/style/app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.lightColor,
  appBarTheme: AppBarTheme(
    toolbarHeight: 130.h,
    backgroundColor: AppColors.mainColor,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkColor,
  appBarTheme: AppBarTheme(
    toolbarHeight: 130.h,
    backgroundColor: AppColors.mainColor,
  ),
);
