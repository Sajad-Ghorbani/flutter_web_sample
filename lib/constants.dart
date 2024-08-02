import 'package:flutter/material.dart';

const kPinkColor = Color(0xFFF05E7B);
const kDarkBlueColor = Color(0xFF071E48);
const kLightGreyColor = Color(0xFFF3F4FB);
const kGreyColor = Color(0xFF9EA4BD);
const kDarkGreyColor = Color(0xFF3D445C);

const kTextHeader = TextStyle(
    fontFamily: 'Titillium',
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: kDarkBlueColor,
    letterSpacing: 2);

const kSectionHeader = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 17,
  color: kDarkGreyColor,
  fontWeight: FontWeight.bold,
);

const kText = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 14,
  color: kGreyColor,
);

const double kSmallWidth = 576;
const double kMediumWidth = 768;
const double kLargeWidth = 992;
const double kXLargeWidth = 1200;
const double kXXLargeWidth = 1400;

class SpecializingItem {
  final String image, sectionHeader, content;

  SpecializingItem({
    required this.image,
    required this.sectionHeader,
    required this.content,
  });
}

List<SpecializingItem> list = [
  SpecializingItem(
    image: 'images/icons/icon-1.png',
    sectionHeader: 'UI/UX',
    content:
        'Landing Pages, User Flow, Wireframing, Prototyping, Mobile App Design.',
  ),
  SpecializingItem(
    image: 'images/icons/icon-2.png',
    sectionHeader: 'Icon/Illustration',
    content:
        'Character Design, Icon Set, Illustration Guide, Illustration Set.',
  ),
  SpecializingItem(
    image: 'images/icons/icon-3.png',
    sectionHeader: 'Branding',
    content: 'HTML/CSS, JavaScript, Animation, WordPress, Responsive Website.',
  ),
  SpecializingItem(
    image: 'images/icons/icon-4.png',
    sectionHeader: 'App Design',
    content: 'HTML/CSS, JavaScript, Animation, WordPress, Responsive Website.',
  ),
  SpecializingItem(
    image: 'images/icons/icon-5.png',
    sectionHeader: 'Motion',
    content: '2D Animation, Motion.',
  ),
  SpecializingItem(
    image: 'images/icons/icon-6.png',
    sectionHeader: 'Development',
    content: 'HTML/CSS, JavaScript, Animation, WordPress, Responsive Website.',
  ),
];
