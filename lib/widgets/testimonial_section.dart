import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/section_header.dart';

class TestimonialSection extends StatelessWidget {
  TestimonialSection({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(440, -1, false, false, true, true);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(500, -1, false, false, true, false);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(500, 300, false, true, true, false);
    } //
    else if (size.width < kXLargeWidth) {
      return bodyBuilder(650, 400, false, true, false, false);
    } //
    else if (size.width < kXXLargeWidth) {
      return bodyBuilder(650, 340, true, true, false, false);
    }
    return bodyBuilder(750, 340, true, true, false, false);
  }

  Widget bodyBuilder(double messageWidth, double imagesWidth, bool showImage1,
      bool showImage2, bool contentPadding, bool isSmall) {
    return Column(
      children: [
        const SectionHeader(
          topTitle: 'TESTIMONIAL',
          title: 'WHAT PEOPLE SAY',
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Visibility(
              visible: showImage2,
              child: Image.asset(
                'images/ferguson.png',
                height: imagesWidth,
              ),
            ),
            Container(
              width: messageWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(contentPadding ? 30 : 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/avatar.png',
                        width: isSmall ? 50 : 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ALEX FARGUSON',
                            style: kSectionHeader.copyWith(
                              letterSpacing: 2,
                            ),
                          ),
                          Text(
                            'HUMAN CENTER DESIGNER',
                            style: kText.copyWith(
                              color: kPinkColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      socialIcon(const Color(0xFF54ACEB),
                          FontAwesomeIcons.twitter, Colors.white, () {}),
                      const SizedBox(
                        width: 10,
                      ),
                      socialIcon(const Color(0xFF0079B9),
                          FontAwesomeIcons.linkedinIn, Colors.white, () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'ios raises the bar for excellence in user interface design and offers great opportunities for yours to deliver '
                    'engaging and unique user experiences. Consider these common design concepts before start code to enhance the usability '
                    'and appeal of your apps. To see more recommendations for great interface design.',
                    style: kText.copyWith(
                      height: 2,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: showImage1,
              child: Image.asset(
                'images/ferguson-2.png',
                height: imagesWidth,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget socialIcon(
      Color color, IconData iconData, Color iconColor, VoidCallback onTapped) {
    return InkWell(
      onTap: onTapped,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color,
        child: Center(
          child: FaIcon(
            iconData,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
