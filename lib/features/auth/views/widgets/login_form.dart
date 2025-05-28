import 'package:flutter/material.dart';
import 'package:verlink/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFormField(label: 'Username'),
          CustomTextFormField(label: 'Password', isPassword: true),
          CustomTextFormField(label: 'Host'),
          CustomTextFormField(
            label: 'Port',
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
              foregroundColor: WidgetStateProperty.all(Colors.white),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Center(child: Text('Log in')),
            ),
          ),
          SizedBox(height: 10),
          Text('or'),
          SizedBox(height: 10),
          IconButton(
            onPressed: () {},
            icon: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 223, 229),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.qr_code_scanner_outlined),
            ),
            iconSize: 80,
          ),
        ],
      ),
    );
  }
}
