import 'package:flutter/material.dart';

import '../../components/socal_card.dart';
import '../../constants.dart';
import 'components/home_question_form.dart';

class HomeQuestionScreen extends StatelessWidget {
  static String routeName = "/sign_up_home_question";

  const HomeQuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tell us which meals you take"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 6),
                  const Text("Register Account", style: headingStyle),
                  const Text(
                    "Let's learn a little about your \nlearning habits",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  const HomeQuestionForm(),
                  const SizedBox(height: 16),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
