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

    return Scaffold(
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
              height: 500,
              child: ListView(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'Título: Inteligência artificail que cozinha...',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      subtitle:
                          Text('Assunto: Inteligência artificial na cozinha.'),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            'Título: Inteligência artificail que cozinha...',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        subtitle: Text(
                            'Assunto: Inteligência artificial na cozinha.'),
                        onTap: () {},
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            'Título: Inteligência artificail que cozinha...',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        subtitle: Text(
                            'Assunto: Inteligência artificial na cozinha.'),
                        onTap: () {},
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            'Título: Inteligência artificail que cozinha...',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        subtitle: Text(
                            'Assunto: Inteligência artificial na cozinha.'),
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
    );
  }
}
