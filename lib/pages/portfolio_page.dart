import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/base_widget.dart';
import 'package:resume_web/widgets/footer.dart';
import 'package:resume_web/widgets/section_header.dart';

class PortfolioPage extends StatelessWidget {
  static String id = '/portfolioPage';

  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(false, true, 400);
    } //
    else if (size.width < kMediumWidth) {
      return bodyBuilder(false, true, 520);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(false, false, 650);
    } //
    else if (size.width < kXLargeWidth) {
      return bodyBuilder(true, false, 650);
    }
    return bodyBuilder(true, false, 762);
  }

  Widget bodyBuilder(bool isLarge, bool isSmall, double imageWidth) {
    return BaseWidget(
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (isLarge) ...[
                const SectionHeader(
                  topTitle: 'PORTFOLIOS',
                  title: 'LATEST PROJECTS',
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Image.asset(
                      'images/recent_projects.png',
                      width: imageWidth,
                    ),
                  ],
                ),
              ],
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
