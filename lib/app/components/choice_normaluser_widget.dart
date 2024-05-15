import 'package:flutter/material.dart';

class ChoiceNormalUserWidget extends StatefulWidget {
  const ChoiceNormalUserWidget({super.key});

  @override
  State<ChoiceNormalUserWidget> createState() => _ChoiceNormalUserWidgetState();
}

class _ChoiceNormalUserWidgetState extends State<ChoiceNormalUserWidget> {
  @override
  Widget build(BuildContext context) {
       return ElevatedButton(
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
        ));
  }
}
