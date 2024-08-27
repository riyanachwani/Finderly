import 'package:finderly/auth/forgotpassword.dart';
import 'package:finderly/auth/login.dart';
import 'package:finderly/auth/signup.dart';
import 'package:finderly/dashboard/dashboard.dart';
import 'package:finderly/landing.dart';
import 'package:finderly/utils/routes.dart';
import 'package:finderly/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class ThemeModel extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;
  void toggleTheme() {
    _mode = _mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer<ThemeModel>(builder: (context, themeModel, child) {
          return MaterialApp(
            themeMode: themeModel.mode,
            theme: MyThemes.lightTheme(context),
            darkTheme: MyThemes.darkTheme(context),
            debugShowCheckedModeBanner: false,
            initialRoute: MyRoutes.landingPage,
            routes: {
              MyRoutes.landingPage: (context) => Landing(),
              MyRoutes.signupPage: (context) => Signup(),
              MyRoutes.loginPage: (context) => Login(),
              MyRoutes.forgotpasswordPage: (context) => ForgotPassword(),
              MyRoutes.dashboardPage: (context) => Dashboard(),
            },
          );
        }));
  }
}
