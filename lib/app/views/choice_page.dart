import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key});

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
        backgroundColor: Color.fromARGB(255, 39, 152, 245),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 180, bottom: 190),
                child: Column(children: [
                  //BOTÃO 'UNIVERSITÁRIO'
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/SignInUniversity');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: Text(
                        'Universitário',
                        style: TextStyle(color: Colors.black, fontSize: 24.0),
                      )),
                  SizedBox(height: 60),

                  //BOTÃO 'USUÁRIO COMUM'
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/SignInNormalUser');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: Text(
                        'Usuário comum',
                        style: TextStyle(color: Colors.black, fontSize: 24.0),
                      ))
                ]))));
  }
}
