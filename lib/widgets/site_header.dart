import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/button_widget.dart';

class SiteHeader extends StatelessWidget {
  SiteHeader({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(true, false, false, 350);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(false, true, false, 350);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(false, false, true, 400);
    } //
    return bodyBuilder(false, false, false, 600);
  }

  Widget bodyBuilder(
      bool extraSmall, bool isSmall, bool isMedium, double imageWidth) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        if (extraSmall) ...[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'HELLo, ',
                  style: kSectionHeader.copyWith(
                    color: kPinkColor,
                  ),
                ),
                TextSpan(
                  text: 'IM SAJAD GHORBANI.',
                  style: kSectionHeader.copyWith(
                    color: kDarkBlueColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'VISUAL DESIGNER',
            style: TextStyle(
              fontFamily: 'Titillium',
              color: kDarkBlueColor,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Freelancer Flutter & Website Designer',
            style: kText,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ButtonWidget(
                isSmall: true,
                text: 'Call Me',
                color: kPinkColor,
                textColor: Colors.white,
                onTapped: () {},
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonWidget(
                isSmall: true,
                text: 'Get CV',
                color: Colors.white,
                textColor: kPinkColor,
                onTapped: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              'images/person.png',
              height: imageWidth,
            ),
          ),
        ] else ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'HELLo, ',
                          style: kSectionHeader.copyWith(
                            color: kPinkColor,
                          ),
                        ),
                        TextSpan(
                          text: 'IM SAJAD GHORBANI.',
                          style: kSectionHeader.copyWith(
                            color: kDarkBlueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    isSmall ? 'VISUAL\nDESIGNER' : 'VISUAL DESIGNER',
                    style: TextStyle(
                      fontFamily: 'Titillium',
                      color: kDarkBlueColor,
                      fontSize: isMedium ? 50 : 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    isSmall
                        ? 'Freelancer ّّFlutter &\nWebsite Designer'
                        : 'Freelancer ّّFlutter & Website Designer',
                    style: kText,
                  ),
                  SizedBox(
                    height: isSmall ? 20 : 40,
                  ),
                  Row(
                    children: [
                      ButtonWidget(
                        isSmall: isSmall,
                        text: 'Call Me',
                        color: kPinkColor,
                        textColor: Colors.white,
                        onTapped: () {
                          // print(MediaQuery.of(context).size.width);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ButtonWidget(
                        isSmall: isSmall,
                        text: 'Get CV',
                        color: Colors.white,
                        textColor: kPinkColor,
                        onTapped: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                'images/person.png',
                height: imageWidth,
              ),
            ],
          ),
        ],
      ],
    );
  }
}
