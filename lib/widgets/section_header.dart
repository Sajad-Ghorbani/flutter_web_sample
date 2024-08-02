import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class SectionHeader extends StatelessWidget {
  final String topTitle, title;
  final CrossAxisAlignment crossAxisAlignment;

  const SectionHeader({super.key, required this.topTitle, required this.title, required this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          topTitle,
          style: kSectionHeader.copyWith(
            letterSpacing: 4,
            color: kPinkColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: kTextHeader,
        ),
      ],
    );
  }
}
