import 'package:flutter/material.dart';
import 'package:resume_web/widgets/base_widget.dart';
import 'package:resume_web/widgets/education_section.dart';
import 'package:resume_web/widgets/footer.dart';
import 'package:resume_web/widgets/site_header.dart';
import 'package:resume_web/widgets/special_skil_section.dart';
import 'package:resume_web/widgets/specializing_section.dart';

class AboutPage extends StatelessWidget {
  static String id = '/aboutPage';

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        SiteHeader(),
        SpecializingSection(),
        const SizedBox(
          height: 60,
        ),
        SpecialSkillSection(),
        const SizedBox(
          height: 60,
        ),
        EducationSection(),
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
