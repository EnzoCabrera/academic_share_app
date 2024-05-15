import 'package:flutter/material.dart';

class ChoiceUniverstityWidget extends StatefulWidget {
  const ChoiceUniverstityWidget({super.key});

  @override
  State<ChoiceUniverstityWidget> createState() =>
      _ChoiceUniverstityWidgetState();
}

class _ChoiceUniverstityWidgetState extends State<ChoiceUniverstityWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        ));
  }
}
