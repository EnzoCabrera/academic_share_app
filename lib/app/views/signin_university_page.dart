import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class SignInUniversityPage extends StatefulWidget {
  const SignInUniversityPage({super.key});

  @override
  State<SignInUniversityPage> createState() => _SignInUniversityPageState();
}

class _SignInUniversityPageState extends State<SignInUniversityPage> {
  File? _selectedFile;
  String email = '';
  String password = '';
  String course = '';
  String college = '';
  String name = '';

  void _openFileExplorer() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 152, 245),
        body: SingleChildScrollView(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 150, bottom: 10),
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
          
                    //Label de Faculdade
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        college = text;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Faculdade',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
          
                    //Label de Curso
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        course = text;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Curso',
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
                        email = text;
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
                        password = text;
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
          
                    //Label de arquivo
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_selectedFile != null) {
                          print('Arquivo enviado: ${_selectedFile!.path}');
                        } else {
                          print('Selecione um arquivo antes de enviar.');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(390, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: Text('Comprovante Escolar'),
                    ),
          
                    //Botão de cadastro
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (email == 'enzo2005cabrera@gmail.com' &&
                            password == 'M1d1t3c4' &&
                            college == 'UNA' &&
                            course == 'Computer Science' &&
                            name == 'Enzo Nascimento Cabrera') {
                          Navigator.of(context).pushNamed('/Choice');
                        } else {
                          print('Informações incorretas');
                        }
                      },
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
                  ]))),
        ));
  }
}
