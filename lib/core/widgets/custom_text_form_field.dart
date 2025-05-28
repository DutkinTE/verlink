import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.keyboardType,
    this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.label,
        filled: true,
        fillColor: Color.fromARGB(255, 227, 223, 229),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
                : null,
      ),
    );
  }
}
