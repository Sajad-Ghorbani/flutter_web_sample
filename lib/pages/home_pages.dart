import 'package:flutter/material.dart';
import 'package:resume_web/widgets/base_widget.dart';
import 'package:resume_web/widgets/education_section.dart';
import 'package:resume_web/widgets/email_box.dart';
import 'package:resume_web/widgets/footer.dart';
import 'package:resume_web/widgets/project_section.dart';
import 'package:resume_web/widgets/site_header.dart';
import 'package:resume_web/widgets/special_skil_section.dart';
import 'package:resume_web/widgets/specializing_section.dart';
import 'package:resume_web/widgets/testimonial_section.dart';

class HomePage extends StatelessWidget {
  static String id = '/homePage';
  const HomePage({super.key});

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
        ProjectsSection(),
        const SizedBox(
          height: 60,
        ),
        EducationSection(),
        const SizedBox(
          height: 60,
        ),
        TestimonialSection(),
        const SizedBox(
          height: 120,
        ),
        EmailBox(),
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
