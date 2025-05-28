import 'package:flutter/material.dart';
import 'package:verlink/core/constants/app_constants.dart';
import 'core/constants/routes.dart';
import 'features/auth/views/screens/login_screen.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}
