import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textValue;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle textStyle;
  final double shadowHeight;
  final VoidCallback onPressed;

  const ButtonWidget({
    required this.textValue,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.textColor,
    required this.textStyle,
    required this.shadowHeight,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, shadowHeight),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor, backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: Size(width, height),
        ),
        child: Text(
          textValue,
          style: textStyle.copyWith(color: textColor),
        ),
      ),
    );
  }
}
