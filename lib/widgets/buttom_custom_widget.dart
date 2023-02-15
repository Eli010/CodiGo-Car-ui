import 'package:flutter/material.dart';

class ButtomCustom extends StatelessWidget {
  final String text;
  final Function() press;
  const ButtomCustom({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff410ADF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        elevation: 3,
        shadowColor: Colors.purple,
        padding: const EdgeInsets.symmetric(vertical: 13),
      ),
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
      ),
    );
  }
}
