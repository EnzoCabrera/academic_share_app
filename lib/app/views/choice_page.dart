import 'package:academic_share/app/components/choice_normaluser_widget.dart';
import 'package:academic_share/app/components/choice_university_widget.dart';
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
                  ChoiceUniverstityWidget(),
                  SizedBox(height: 50,),

                  //BOTÃO 'USUÁRIO COMUM'
                  ChoiceNormalUserWidget()
                ]))));
  }
}
