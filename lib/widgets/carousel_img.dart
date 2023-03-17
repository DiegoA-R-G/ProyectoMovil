import 'package:flutter/material.dart';

final List imgList = [
  [
    'https://cdn.vox-cdn.com/thumbor/Xk_OKzWCYC8a-GH3w20lV8wmoHI=/0x0:5000x5000/1400x1050/filters:focal(2500x2500:2501x2501)/cdn.vox-cdn.com/uploads/chorus_asset/file/19863460/GX550_C04_v6_Light.png',
    'razen pantalla dual'
  ],
  [
    'https://acf.geeknetic.es/imgw/imagenes/auto/2022/10/25/qsa-image.png?f=webp',
    'Refigeración liquida en mother board'
  ],
  [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQV31jxzJEVpA8o9kEikntbvWd2Hn17YPNRQ&usqp=CAU',
    'Computador con refigeración liquida'
  ],
  [
    'data:image/jpeg;base64,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',
    'Mouse'
  ],
  [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz74eO6pPkBqOh2JPieWGPyybJssQDvHNA1g&usqp=CAU',
    'Audifonos'
  ],
  [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyU7SctiU6HUY6VTcktm59lNTI8LCCTDcY3w&usqp=CAU',
    'Enteción de pantalla'
  ]
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item[0], fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        '${item[1]}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
