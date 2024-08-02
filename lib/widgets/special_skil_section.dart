import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/section_header.dart';

class SpecialSkillSection extends StatelessWidget {
  SpecialSkillSection({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(
        imageHeight: 200,
        socialWidth: 150,
        isLarge: false,
        isMedium: false,
        isSmall: true,
        isExtraSmall: true,
      );
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(
        imageHeight: 300,
        socialWidth: 250,
        isLarge: false,
        isMedium: false,
        isSmall: true,
        isExtraSmall: false,
      );
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(
        imageHeight: 400,
        socialWidth: 300,
        isLarge: false,
        isMedium: true,
        isSmall: true,
        isExtraSmall: false,
      );
    } //
    else if (size.width < kXLargeWidth) {
      return bodyBuilder(
        imageHeight: 400,
        socialWidth: 400,
        isLarge: false,
        isMedium: false,
        isSmall: false,
        isExtraSmall: false,
      );
    }
    return bodyBuilder(
      imageHeight: 500,
      socialWidth: 400,
      isLarge: true,
      isMedium: false,
      isSmall: false,
      isExtraSmall: false,
    );
  }

  Widget bodyBuilder({
    required double imageHeight,
    required double socialWidth,
    required bool isExtraSmall,
    required bool isSmall,
    required bool isMedium,
    required bool isLarge,
  }) {
    return Column(
      children: [
        const SectionHeader(
          topTitle: 'EXPERTISE',
          title: 'SPECIAL SKILLS',
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/person2.png',
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: isExtraSmall ? 50 : 70,
                  width: socialWidth,
                  padding:
                      EdgeInsets.symmetric(horizontal: isExtraSmall ? 10 : 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (!isMedium) ...[
                        if (!isSmall) ...[
                          Text(
                            'Follow Me On:',
                            style: kText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ],
                      socialIcon(
                        const Color(0xFFEC417A),
                        FontAwesomeIcons.dribbble,
                        const Color(0xFFC11659),
                        () {},
                        isExtraSmall,
                      ),
                      socialIcon(
                        Colors.green,
                        FontAwesomeIcons.whatsapp,
                        Colors.white,
                        () {},
                        isExtraSmall,
                      ),
                      socialIcon(
                        const Color(0xFF54ACEB),
                        FontAwesomeIcons.twitter,
                        Colors.white,
                        () {},
                        isExtraSmall,
                      ),
                      socialIcon(
                        const Color(0xFF0079B9),
                        FontAwesomeIcons.linkedinIn,
                        Colors.white,
                        () {},
                        isExtraSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (isLarge) ...[
              Stack(
                children: [
                  const SizedBox(
                    height: 360,
                    width: 650,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              CircularPercentIndicator(
                                radius: 49,
                                lineWidth: 7.0,
                                animation: true,
                                percent: 0.7,
                                center: const Text(
                                  "70 %",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: kPinkColor),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                linearGradient: const LinearGradient(
                                  colors: [Colors.red, kPinkColor],
                                ),
                                backgroundColor: Colors.grey.shade300,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Development',
                                style: kSectionHeader,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'HTML/CSS, JavaScript, Animation, WordPress,\nResponsive Website, Mobile App Design.',
                            style: kText,
                          ),
                        ],
                      ),
                    ),
                  ),
                  imageItem(
                      left: 40, bottom: 0, image: 'images/icons/icon-3.png'),
                  imageItem(
                      left: 200, bottom: 20, image: 'images/icons/icon-2.png'),
                  imageItem(
                      left: 350, bottom: 60, image: 'images/icons/icon-6.png'),
                  imageItem(
                      left: 460, bottom: 150, image: 'images/icons/icon-4.png'),
                  imageItem(
                      left: 550, bottom: 270, image: 'images/icons/icon-5.png'),
                ],
              ),
            ] else ...[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 80,
                          lineWidth: 7.0,
                          animation: true,
                          percent: 0.7,
                          center: const Text(
                            "70 %",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kPinkColor),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          linearGradient: const LinearGradient(
                            colors: [Colors.red, kPinkColor],
                          ),
                          backgroundColor: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Development',
                          style: kSectionHeader,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      isSmall
                          ? 'HTML/CSS, JavaScript, Animation,\nWordPress, Responsive Website,\nMobile App Design.'
                          : 'HTML/CSS, JavaScript, Animation, WordPress,\nResponsive Website, Mobile App Design.',
                      style: kText,
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget socialIcon(Color color, IconData iconData, Color iconColor,
      VoidCallback onTapped, bool isExtraSmall) {
    return InkWell(
      onTap: onTapped,
      child: CircleAvatar(
        radius: isExtraSmall ? 15 : 20,
        backgroundColor: color,
        child: Center(
          child: FaIcon(
            iconData,
            color: iconColor,
            size: isExtraSmall ? 18 : 24,
          ),
        ),
      ),
    );
  }

  Widget imageItem(
      {required double left, required double bottom, required String image}) {
    return Positioned(
      left: left,
      bottom: bottom,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
