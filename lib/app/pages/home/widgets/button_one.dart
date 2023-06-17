import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  final VoidCallback onpressed;
  final String buttonLabel;
  final double? height;
  final double? width;

  const ButtonOne({
    super.key,
    required this.onpressed,
    required this.buttonLabel,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.red,
          ),
          child: Center(
            child: Text(
              buttonLabel,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
