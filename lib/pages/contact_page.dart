import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/base_widget.dart';
import 'package:resume_web/widgets/contact_form.dart';
import 'package:resume_web/widgets/footer.dart';
import 'package:resume_web/widgets/section_header.dart';

class ContactPage extends StatelessWidget {
  static String id = '/contactPage';

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(150, false, true);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(250, false, true);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(400, false, false);
    } //
    return bodyBuilder(400, true, false);
  }

  Widget bodyBuilder(double imageHeight, bool isLarge, bool isSmall) {
    return BaseWidget(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SectionHeader(
              topTitle: 'CONTACT US',
              title: isLarge
                  ? 'HAVE ANY PROJECT IN YOUR MIND?'
                  : 'HAVE ANY PROJECT\nIN YOUR MIND?',
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            Image.asset(
              'images/contact_us.png',
              height: imageHeight,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 40),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Yuo can send message to my email address or use bottom form.',
                style: kText,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'sajad.2012.gh@gmail.com',
                style: kText.copyWith(
                  color: kPinkColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ContactForm(
                isSmall: isSmall,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 160,
        ),
        Footer(),
        const SizedBox(
          height: 160,
        ),
      ],
    );
  }
}
