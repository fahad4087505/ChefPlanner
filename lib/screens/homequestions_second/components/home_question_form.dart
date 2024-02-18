import 'package:flutter/material.dart';
import 'package:shop_app/screens/homequestions/home_question_second_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../../../components/form_error.dart';
import '../../../constants.dart';

class HomeQuestionForm extends StatefulWidget {
  const HomeQuestionForm({super.key});

  @override
  _HomeQuestionFormState createState() => _HomeQuestionFormState();
}

class _HomeQuestionFormState extends State<HomeQuestionForm> {
  static String routeName = "/home_question_form";

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  String selectedCuisine = '';

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Morning snack",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height:7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Afternoon Snack",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Dinner ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Late Night Snack  ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'No',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Sex",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Male'),
                value: 'Male',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('Female'),
                value: 'Female',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('Other'),
                value: 'Other',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              // Add more RadioListTile widgets for other cuisines as needed
            ],
          ),
          FormError(errors: errors),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, HomeQuestionSecondScreen.routeName);
              // }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
