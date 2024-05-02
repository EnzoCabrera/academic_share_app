import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String email = '';
  String senha = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 152, 245),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 180, bottom: 20),
          child: Column(children: [
            Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ],
            ),

            //LABEL DE EMAIL
            SizedBox(height: 30),
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true),
            ),

            //LABEL DE SENHA
            SizedBox(height: 20),
            TextField(
              onChanged: (text) {
                senha = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  fillColor: Colors.white,
                  filled: true),
            ),

            //BOTÃO DE LOGIN
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (email == 'enzo2005cabrera@gmail.com' &&
                    senha == 'M1d1t3c4') {
                  print('Login feito com sucesso');
                } else {
                  print('Email ou senha incorretos');
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 39, 152, 245)),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),

            //BOTÃO DA TELA DE CADASTRO
            Padding(
              padding: const EdgeInsets.only(
                  left: 85, right: 50, top: 5, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Não tem login',
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cadastre-se');
                    },
                    child: Text('Cadastre-se',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                              ),
                            ])),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
