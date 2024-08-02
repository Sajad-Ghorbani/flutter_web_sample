import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/about_page.dart';
import 'package:resume_web/pages/contact_page.dart';
import 'package:resume_web/pages/home_pages.dart';
import 'package:resume_web/pages/portfolio_page.dart';

class Footer extends StatelessWidget {
  Footer({super.key});
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return bodyBuilder(false, false,true);
    } //
    else if (size.width < kLargeWidth) {
      return bodyBuilder(false, true,false);
    } //
    return bodyBuilder(true, true,false);
  }

  Widget bodyBuilder(bool showSocial, bool showChat, bool isSmall) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Visibility(
          visible: showSocial,
          child: Container(
            height: 70,
            width: 300,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                socialIcon(const Color(0xFFEC417A), FontAwesomeIcons.dribbble,
                    const Color(0xFFC11659), () {}),
                socialIcon(Colors.green, FontAwesomeIcons.whatsapp,
                    Colors.white, () {}),
                socialIcon(const Color(0xFF54ACEB), FontAwesomeIcons.twitter,
                    Colors.white, () {}),
                socialIcon(const Color(0xFF0079B9), FontAwesomeIcons.linkedinIn,
                    Colors.white, () {}),
              ],
            ),
          ),
        ),
        menuItem('HOME', () {
          Get.toNamed(HomePage.id);
        }, isSmall),
        menuItem('ABOUT', () {
          Get.toNamed(AboutPage.id);
        }, isSmall),
        menuItem('PORTFOLIOS', () {
          Get.toNamed(PortfolioPage.id);
        }, isSmall),
        menuItem('CONTACT', () {
          Get.toNamed(ContactPage.id);
        }, isSmall),
        Visibility(
          visible: showChat,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {},
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: kPinkColor,
              child: Center(
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        )
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

  Widget menuItem(
    String text,
    VoidCallback onTapped,
    bool isSmall,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: isSmall ? 16 : 18,
            color: kDarkGreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
