import 'package:flutter/material.dart';

class HomeNormalUserPage extends StatefulWidget {
  const HomeNormalUserPage({super.key});

  @override
  State<HomeNormalUserPage> createState() => _HomeNormalUserPageState();
}

class _HomeNormalUserPageState extends State<HomeNormalUserPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);

    return MaterialApp(
    theme: themeData,
    home: Scaffold(
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
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 700,
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
                      onTap: () {},
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
