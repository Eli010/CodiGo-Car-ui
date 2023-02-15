import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final IconData? suffixIcon;
  const TextFieldCustom({
    super.key,
    required this.label,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            // borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xffBCBFC4), width: 0.5),
          ),
          enabledBorder: const UnderlineInputBorder(
            // borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xffBCBFC4), width: 0.5),
          ),
          suffixIcon: Icon(suffixIcon),
          label: Text(
            label,
            style: const TextStyle(color: Color(0xffBCBFC4)),
          ),
        ),
      ),
    );
  }
}
