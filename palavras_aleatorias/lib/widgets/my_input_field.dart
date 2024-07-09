import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool isPassword;

  const MyInputField(
      {super.key,
      required this.label,
      required this.placeholder,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.label),
          TextFormField(
            obscureText: this.isPassword,
            decoration: InputDecoration(
              hintText: this.placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
