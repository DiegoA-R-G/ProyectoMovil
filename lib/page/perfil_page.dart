import 'package:flutter/material.dart';

import '../widgets/appbar_nav.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBarNav(title: 'Perfil')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(45, 0, 0, 0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network("name"),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Perfil"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PerfilPage()));
                },
              ),
            ],
          ),
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // mainAxisAlignment: MainAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(111, 0, 0, 0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Icon(Icons.person_sharp),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 40,
              ),
              child: Text('Nombre', style: TextStyle(fontSize: 18)),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 40,
              ),
              child: Text('Gmail', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
