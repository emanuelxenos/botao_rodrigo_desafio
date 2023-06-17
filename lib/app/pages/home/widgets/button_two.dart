import 'package:flutter/material.dart';

class ButtonTwo extends StatelessWidget {
  final VoidCallback onpressed;
  final double? height;
  final double? width;
  final String buttonLabel;

  const ButtonTwo(
      {super.key,
      required this.onpressed,
      this.height = 40,
      this.width = 40,
      required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: onpressed,
          child: Text(
            buttonLabel,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
    );
  }
}
