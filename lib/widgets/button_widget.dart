import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class ButtonWidget extends StatelessWidget {
  final Color color, textColor;
  final String text;
  final VoidCallback onTapped;
  final bool isSmall;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onTapped,
    required this.isSmall,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      shadowColor: kPinkColor,
      borderRadius: BorderRadius.circular(25),
      color: color,
      child: InkWell(
        splashColor: textColor,
        borderRadius: BorderRadius.circular(25),
        onTap: onTapped,
        child: Container(
          height: isSmall ? 40 : 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: kPinkColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.symmetric(horizontal: isSmall ? 20 : 40),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5
              ),
            ),
          ),
        ),
      ),
    );
  }
}
