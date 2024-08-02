import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class EmailBox extends StatelessWidget {
  EmailBox({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(20);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(30);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(40);
    } //
    return bodyBuilder(50);
  }

  Widget bodyBuilder(double fontSize) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Have Any Project In Your Mind? ',
                    style: kText.copyWith(
                      color: const Color(0xFF575757),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Say Hello At',
                    style: kText.copyWith(
                      color: kPinkColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Sajad.2012.gh@gmail.com',
              style: kSectionHeader.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
