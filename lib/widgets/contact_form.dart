import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/button_widget.dart';

class ContactForm extends StatelessWidget {
  final bool isSmall;

  ContactForm({super.key, required this.isSmall});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name:',
              style: kTextHeader,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameController,
              style: kText,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email:',
              style: kTextHeader,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              style: kText,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Message:',
              style: kTextHeader,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: messageController,
              style: kText,
              maxLines: 5,
              // minLines: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 180,
                child: ButtonWidget(
                  isSmall: isSmall,
                  text: 'SUBMIT',
                  color: kPinkColor,
                  textColor: Colors.white,
                  onTapped: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
