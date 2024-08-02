import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/button_widget.dart';
import 'package:resume_web/widgets/section_header.dart';

class ProjectsSection extends StatelessWidget {
  ProjectsSection({super.key});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(false,true, 400);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(false,true, 520);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(false,false, 650);
    } //
    else if (size.width < kXLargeWidth) {
      return bodyBuilder(true,false, 650);
    }
    return bodyBuilder(true,false, 762);
  }

  Widget bodyBuilder(bool isLarge,bool isSmall, double imageWidth) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (isLarge) ...[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SectionHeader(
                  topTitle: 'PORTFOLIOS',
                  title: 'LATEST PROJECTS',
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonWidget(
                  isSmall: isSmall,
                  text: 'My Portfolios',
                  color: kPinkColor,
                  textColor: Colors.white,
                  onTapped: () {},
                ),
              ],
            ),
            Image.asset(
              'images/recent_projects.png',
              width: imageWidth,
            ),
          ] else ...[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SectionHeader(
                  topTitle: 'PORTFOLIOS',
                  title: 'LATEST PROJECTS',
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  isSmall: isSmall,
                  text: 'My Portfolios',
                  color: kPinkColor,
                  textColor: Colors.white,
                  onTapped: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'images/recent_projects.png',
                  width: imageWidth,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
