import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../complete_profile/complete_profile_screen.dart';

class QuestionForm extends StatefulWidget {
  const QuestionForm({super.key});

  @override
  _QuestionFormState createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
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
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Name",
              hintText: "Enter your name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Select Cuisine",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          Column(
            children: [
              RadioListTile<String>(
                title: const Text('Italian'),
                value: 'Italian',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('Mexican'),
                value: 'Mexican',
                groupValue: selectedCuisine,
                onChanged: (value) {
                  setState(() {
                    selectedCuisine = value!;
                  });
                },
                activeColor: Colors.green, // Set active color to green
              ),
              RadioListTile<String>(
                title: const Text('Chinese'),
                value: 'Chinese',
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
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Age",
              hintText: "Enter your age",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,

              // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/age.svg"),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Weight",
              hintText: "Enter your weight",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Meals Per Day",
              hintText: "Enter your meals per day",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Number of People in Household",
              hintText: "Enter number of peoples",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          // const SizedBox(height: 20),
          // TextFormField(
          //   keyboardType: TextInputType.emailAddress,
          //   onSaved: (newValue) => email = newValue,
          //   onChanged: (value) {
          //     if (value.isNotEmpty) {
          //       removeError(error: kEmailNullError);
          //     } else if (emailValidatorRegExp.hasMatch(value)) {
          //       removeError(error: kInvalidEmailError);
          //     }
          //     return;
          //   },
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       addError(error: kEmailNullError);
          //       return "";
          //     } else if (!emailValidatorRegExp.hasMatch(value)) {
          //       addError(error: kInvalidEmailError);
          //       return "";
          //     }
          //     return null;
          //   },
          //   decoration: const InputDecoration(
          //     labelText: "Email",
          //     hintText: "Enter your email",
          //     // If  you are using latest version of flutter then lable text and hint text shown like this
          //     // if you r using flutter less then 1.20.* then maybe this is not working properly
          //     floatingLabelBehavior: FloatingLabelBehavior.always,
          //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
          //   ),
          // ),
          // const SizedBox(height: 20),
          // TextFormField(
          //   obscureText: true,
          //   onSaved: (newValue) => password = newValue,
          //   onChanged: (value) {
          //     if (value.isNotEmpty) {
          //       removeError(error: kPassNullError);
          //     } else if (value.length >= 8) {
          //       removeError(error: kShortPassError);
          //     }
          //     password = value;
          //   },
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       addError(error: kPassNullError);
          //       return "";
          //     } else if (value.length < 8) {
          //       addError(error: kShortPassError);
          //       return "";
          //     }
          //     return null;
          //   },
          //   decoration: const InputDecoration(
          //     labelText: "Password",
          //     hintText: "Enter your password",
          //     // If  you are using latest version of flutter then lable text and hint text shown like this
          //     // if you r using flutter less then 1.20.* then maybe this is not working properly
          //     floatingLabelBehavior: FloatingLabelBehavior.always,
          //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
          //   ),
          // ),
          // const SizedBox(height: 20),
          // TextFormField(
          //   obscureText: true,
          //   onSaved: (newValue) => conform_password = newValue,
          //   onChanged: (value) {
          //     if (value.isNotEmpty) {
          //       removeError(error: kPassNullError);
          //     } else if (value.isNotEmpty && password == conform_password) {
          //       removeError(error: kMatchPassError);
          //     }
          //     conform_password = value;
          //   },
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       addError(error: kPassNullError);
          //       return "";
          //     } else if ((password != value)) {
          //       addError(error: kMatchPassError);
          //       return "";
          //     }
          //     return null;
          //   },
          //   decoration: const InputDecoration(
          //     labelText: "Confirm Password",
          //     hintText: "Re-enter your password",
          //     // If  you are using latest version of flutter then lable text and hint text shown like this
          //     // if you r using flutter less then 1.20.* then maybe this is not working properly
          //     floatingLabelBehavior: FloatingLabelBehavior.always,
          //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
          //   ),
          // ),
          FormError(errors: errors),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, SignUpScreen.routeName);
              // }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
