import 'package:flutter/material.dart';

class HomeUniversityPage extends StatefulWidget {
  const HomeUniversityPage({super.key});

  @override
  State<HomeUniversityPage> createState() => _HomeUniversityPageState();
}

class _HomeUniversityPageState extends State<HomeUniversityPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);

    return MaterialApp(
    theme: themeData,   
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      backgroundColor: Color.fromARGB(255, 39, 152, 245),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                  trailing: <Widget>[
                    Tooltip(
                      message: 'Change brightness mode',
                      child: IconButton(
                        isSelected: isDark,
                        onPressed: () {
                          setState(() {
                            isDark = !isDark;
                          });
                        },
                        icon: const Icon(Icons.wb_sunny_outlined),
                        selectedIcon: const Icon(Icons.brightness_2_outlined),
                      ),
                    )
                  ],
                );
              },
              suggestionsBuilder: (
                BuildContext context,
                SearchController controller,
              ) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              },
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  minimumSize: Size(400, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: Text(
                'Publique um artigo ou pesquisa',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 577,
              child: ListView(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Título: Inteligência artificial que cozinha...',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Assunto: Inteligência artificial na cozinha.'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Autor: Enzo Nascimento',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushNamed('/InsidePostPage');

                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Título: Inteligência artificial que cozinha...',
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Assunto: Inteligência artificial na cozinha.'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Autor: Enzo Nascimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    )
    );
  }
}
