import 'package:flutter/material.dart';

class LoginController {
  final BuildContext context;
  final email = '';
  final password = '';

  LoginController(this.context, {required String email, required String password});

  void login() {
    // Aqui você pode adicionar a lógica de autenticação
    if (email == 'enzo2005cabrera@gmail.com' && password == '123') {
      Navigator.of(context).pushNamed('/HomeUniversityPage');
    } 
    else if(email == 'pedro@gmail.com' && password == '123') {
      Navigator.of(context).pushNamed('/HomeUniversityPage');
    }
    else if(email == 'swit@gmail.com' && password == '123') {
      Navigator.of(context).pushNamed('/HomeUniversityPage');
    }
    else {
      Text('Email ou senha incorretos');
    }
      
    }
}

