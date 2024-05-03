import 'package:academic_share/app/views/choice_page.dart';
import 'package:academic_share/app/views/login_page.dart';
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

      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/Choice':(context) => ChoicePage(),
        '/SignInUniversity':(context) => SignInUniversityPage(),
        '/SignInNormalUser':(context) => SignInNormalUserPage(),
        
      },
    );
  }
}