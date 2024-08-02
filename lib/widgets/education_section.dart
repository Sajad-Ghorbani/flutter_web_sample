import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/button_widget.dart';
import 'package:resume_web/widgets/section_header.dart';

class EducationSection extends StatelessWidget {
  EducationSection({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(-1, true,false);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(-1, true,false);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(380, false,true);
    } //
    return bodyBuilder(500, false,false);
  }

  Widget bodyBuilder(double imageHeight, bool isSmall,bool isMedium) {
    return Column(
      children: [
        const SectionHeader(
          topTitle: 'QUALIFICATION',
          title: 'MY EDUCATION',
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (!isSmall) ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/person3.png',
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        ButtonWidget(
                          isSmall: false,
                          text: 'Call Me',
                          color: kPinkColor,
                          textColor: Colors.white,
                          onTapped: () {},
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ButtonWidget(
                          isSmall: false,
                          text: 'Get CV',
                          color: Colors.white,
                          textColor: kPinkColor,
                          onTapped: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            Column(
              children: [
                educationBox(
                    topText: 'University Of Professional',
                    title: 'Human Center Design',
                    content: isMedium
                        ? 'HTML/CSS, JavaScript, Animation,\nWordPress, Responsive Website,\nMobile App Design.'
                        : 'HTML/CSS, JavaScript, Animation, WordPress,\nResponsive Website, Mobile App Design.'),
                const SizedBox(
                  height: 20,
                ),
                educationBox(
                    topText: 'BUT',
                    title: 'Data Computer Science',
                    content: isMedium
                        ? 'HTML/CSS, JavaScript, Animation,\nWordPress, Responsive Website,\nMobile App Design.'
                        : 'HTML/CSS, JavaScript, Animation, WordPress,\nResponsive Website, Mobile App Design.'),
                const SizedBox(
                  height: 20,
                ),
                educationBox(
                    topText: 'BUT',
                    title: 'Data Computer Science',
                    content: isMedium
                        ? 'HTML/CSS, JavaScript, Animation,\nWordPress, Responsive Website,\nMobile App Design.'
                        : 'HTML/CSS, JavaScript, Animation, WordPress,\nResponsive Website, Mobile App Design.'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget educationBox({
    required String topText,
    required String title,
    required String content,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topText,
            style: kText.copyWith(color: kPinkColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: kSectionHeader,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            content,
            style: kText,
          ),
        ],
      ),
    );
  }
}
