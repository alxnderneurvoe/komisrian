// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../bar/nav.dart';

class BottomTopUp extends StatefulWidget {
  const BottomTopUp({super.key});

  @override
  State<BottomTopUp> createState() => _BottomTopUpState();
}

class _BottomTopUpState extends State<BottomTopUp> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Image.asset('assets/trmm.png', height: 70)),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hosted by',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Multimeida E-Sport Community',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.infinity, 2),
                      ),
                    ),
                    onPressed: () {
                      navToPage(context);
                    },
                    child: Text(
                      'Klik disini untuk Top Up',
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
