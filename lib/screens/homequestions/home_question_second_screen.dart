import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/home_question_second_form.dart';

class HomeQuestionSecondScreen extends StatelessWidget {
  static String routeName = "/sign_up_home_question_second";

  const HomeQuestionSecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tell us which meals you take"),
      ),
      body: const SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Text("Register Account", style: headingStyle),
                  Text(
                    "Let's learn a little about your \nlearning habits",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  HomeQuestionSecondForm(),
                  SizedBox(height: 16),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
