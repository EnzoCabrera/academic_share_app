import 'package:flutter/material.dart';

class InsidePostPage extends StatefulWidget {
  const InsidePostPage({super.key});

  @override
  State<InsidePostPage> createState() => _InsidePostPageState();
}

class _InsidePostPageState extends State<InsidePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 152, 245),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        )
      )
    );
  }
}