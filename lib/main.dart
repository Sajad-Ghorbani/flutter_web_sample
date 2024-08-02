import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_web/pages/about_page.dart';
import 'package:resume_web/pages/contact_page.dart';
import 'package:resume_web/pages/home_pages.dart';
import 'package:resume_web/pages/portfolio_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F4FB),
      ),
      getPages: [
        GetPage(
          name: HomePage.id,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AboutPage.id,
          page: () => const AboutPage(),
        ),
        GetPage(
          name: PortfolioPage.id,
          page: () => PortfolioPage(),
        ),
        GetPage(
          name: ContactPage.id,
          page: () => ContactPage(),
        ),
      ],
      initialRoute: HomePage.id,
      defaultTransition: Transition.fade,
    );
  }
}
