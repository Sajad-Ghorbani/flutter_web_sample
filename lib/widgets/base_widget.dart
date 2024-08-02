import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class BaseWidget extends StatelessWidget {
  final List<Widget> children;

  const BaseWidget({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width < kSmallWidth) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: children,
            ),
          ),
        ),
      );
    } //
    else if (size.width < kMediumWidth) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 540,
            child: SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      );
    } //
    else if (size.width < kLargeWidth) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 720,
            child: SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      );
    } //
    else if (size.width < kXLargeWidth) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 960,
            child: SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      );
    } //
    else if (size.width < kXXLargeWidth) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 1140,
            child: SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      );
    } //
    else {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 1320,
            child: SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      );
    }
  }
}
