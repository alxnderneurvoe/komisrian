// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../bar/nav.dart';

class GaleriPemain extends StatefulWidget {
  const GaleriPemain({super.key});

  @override
  State<GaleriPemain> createState() => _GaleriPemainState();
}

class _GaleriPemainState extends State<GaleriPemain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.8),
      height: 385,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Team yang telah bergabung dalam event ini',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const Divider(),
                const Text(
                  'Daftar Squad yang terdaftar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/evos.png', width: 80, height: 60),
                          Text(
                            'EVOS',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/ae.png', width: 80, height: 60),
                          Text(
                            'ALTER EGO',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/geek.png', width: 80, height: 60),
                          Text(
                            'GEEK FAM',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/btr.png', width: 80, height: 60),
                          Text(
                            'BIGETRON',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black.withOpacity(0.7)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/aura.png', width: 80, height: 60),
                          Text(
                            'AURA',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 47, 0),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/onic.png', width: 80, height: 60),
                          Text(
                            'ONIC',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Top Up Mobile Legend',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Jasa Joki Honkai',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(150, 2),
                      ),
                    ),
                    onPressed: () {
                      navToHomeDua(context);
                    },
                    child: Text(
                      'Klik di bagian ini',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
