// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.labelText,
      this.onChange,
      this.obscureText = false,
      this.inputType});
  TextInputType? inputType;
  String? labelText;
  Function(String)? onChange;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText!,
      onChanged: onChange,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Typing....",
        labelText: labelText,
      ),
    );
  }
}
