import 'package:academic_share/app/views/signin_normaluser_page.dart';
import 'package:academic_share/app/views/signin_university_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInNormalUserPage()
    );
  }
}