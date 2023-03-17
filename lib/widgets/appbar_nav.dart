import 'package:flutter/material.dart';
import 'package:hello_flutter/page/home_page.dart';

import '../page/perfil_page.dart';

// ignore: must_be_immutable
class AppBarNav extends StatelessWidget {
  String title;

  AppBarNav({super.key, required this.title});
// PerfilPage
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PerfilPage()));
          },
          icon: const Icon(Icons.person_3_outlined),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: const Icon(Icons.home),
        ),
      ],
    );
  }
}
