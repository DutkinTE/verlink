import 'package:flutter/material.dart';
import 'package:verlink/core/constants/app_constants.dart';
import 'package:verlink/features/auth/views/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Align(alignment: Alignment.centerLeft, child: Text('Log in', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            SizedBox(height: 20),
            LoginForm(),
            Spacer(),
            Text('Version ${AppConstants.appVersion}')
          ],
        ),
      ),
    );
  }
}
