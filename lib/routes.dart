import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/homequestions/home_question_second_screen.dart';
import 'package:shop_app/screens/homequestions_second/components/home_question_form.dart';
import 'package:shop_app/screens/homequestions_second/home_question_screen.dart';
import 'package:shop_app/screens/questions/question_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';

import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  QuestionScreen.routeName: (context) => const QuestionScreen(),
  HomeQuestionScreen.routeName: (context) => const HomeQuestionScreen(),
  // HomeQuestionForm.routeName: (context) => const HomeQuestionForm(),
  HomeQuestionSecondScreen.routeName: (context) => const HomeQuestionSecondScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
