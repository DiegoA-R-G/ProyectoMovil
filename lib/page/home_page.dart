import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/widgets/appbar_nav.dart';
// import 'package:hello_flutter/medicos_page.dart';
import 'package:hello_flutter/page/products_list_page.dart';

import '../widgets/carousel_img.dart';
import 'perfil_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(45, 7, 5, 10),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBarNav(title: 'TecnoMax')),
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
                    child: Image.network("https://cdn4.iconfinder.com/data/icons/scripting-and-programming-languages/512/Python_logo-512.png"),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                          Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(111, 0, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductsList()));
                        },
                        icon: const Icon(
                          Icons.computer_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const Text('Computadores', style: TextStyle(fontSize: 18))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
              width: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 3),
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: imageSliders,
            ),
          ],
        ),
      ),
    );
  }
}
