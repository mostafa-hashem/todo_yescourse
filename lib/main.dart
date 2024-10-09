import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider2/prvider/app_provider.dart';
import 'package:provider2/screens/home_layout.dart';
import 'package:provider2/screens/log_in.dart';
import 'package:provider2/screens/sign_up.dart';
import 'package:provider2/screens/splash_screen.dart';
import 'package:provider2/style/my_theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
      builder: ( _,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: provider.theme,
          home: SplashScreen(),
          routes: {
            LogIn.routeName: (context) => LogIn(),
            SignUp.routeName: (context) => SignUp(),
            HomeLayout.routeName: (context) => HomeLayout(),
          },
        );
      }
    );
  }
}
