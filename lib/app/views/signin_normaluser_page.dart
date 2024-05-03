import 'package:flutter/material.dart';

class SignInNormalUserPage extends StatefulWidget {
  const SignInNormalUserPage({super.key});

  @override
  State<SignInNormalUserPage> createState() => _SignInNormalUserPageState();
}

class _SignInNormalUserPageState extends State<SignInNormalUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 152, 245),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 250, bottom: 10),
                child: Column(children: [
                  
                  //Label de nome
                  TextField(
                    onChanged: (text) {
                      text;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: 'Nome Completo',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),

                  

                  
                  //Label de Email
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (text) {
                      text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),

                  //Label de Password
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (text) {
                      text;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),

                  

                  //Botão de cadastro
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 62, 163, 246),
                        minimumSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ]))));
  }
}
