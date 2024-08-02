import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/section_header.dart';

class SpecializingSection extends StatelessWidget {
  SpecializingSection({super.key});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    print(size.width);
    if (size.width < kMediumWidth) {
      return bodyBuilder(true, true, false);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(false, true, false);
    } //
    else if (size.width < kXLargeWidth) {
      return bodyBuilder(false, false, true);
    }
    return bodyBuilder(false, false, false);
  }

  Widget bodyBuilder(bool extraSmall, bool isSmall, bool isMedium) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 70),
      child: Column(
        children: [
          const SectionHeader(
            topTitle: 'WHAT I DO',
            title: 'SPECIALIZING IN',
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          if (isSmall) ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < list.length; i++) ...[
                  itemRow(
                    image: list[i].image,
                    sectionHeader: list[i].sectionHeader,
                    content: list[i].content,
                    width: extraSmall ? 250 : 400,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ],
            ),
          ] else ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    itemRow(
                      image: list[0].image,
                      sectionHeader: list[0].sectionHeader,
                      content: list[0].content,
                      width: isMedium ? 250 : 400,
                    ),
                    itemRow(
                      image: list[1].image,
                      sectionHeader: list[1].sectionHeader,
                      content: list[1].content,
                      width: isMedium ? 250 : 400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    itemRow(
                      image: list[2].image,
                      sectionHeader: list[2].sectionHeader,
                      content: list[2].content,
                      width: isMedium ? 250 : 400,
                    ),
                    itemRow(
                      image: list[3].image,
                      sectionHeader: list[3].sectionHeader,
                      content: list[3].content,
                      width: isMedium ? 250 : 400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    itemRow(
                      image: list[4].image,
                      sectionHeader: list[4].sectionHeader,
                      content: list[4].content,
                      width: isMedium ? 250 : 400,
                    ),
                    itemRow(
                      image: list[5].image,
                      sectionHeader: list[5].sectionHeader,
                      content: list[5].content,
                      width: isMedium ? 250 : 400,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget itemRow({
    required String image,
    required String sectionHeader,
    required String content,
    required double width,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 90,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sectionHeader,
                style: kSectionHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style: kText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
