import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  const CustomTextFiled({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8)),
        fillColor: const Color(0xffA7A3FF),
        filled: true,
        contentPadding: const EdgeInsets.all(22),
        hintStyle: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.7)),
        hintText: hint,
      ),
    );
  }
}
