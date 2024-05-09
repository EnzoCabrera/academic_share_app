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
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 39, 152, 245),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 900,
            child: Card(
                elevation: 10,
                shadowColor: Colors.grey,
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Título: Inteligência artificial que cozinha...',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Assunto: Inteligência artificial na cozinha.',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Autor: Enzo Nascimento',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
                    ],
                  ),
                  onTap: () {},
                )),
          ),
        ),
      ),
    );
  }
}
