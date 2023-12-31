// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

import 'bottomjoki.dart';
import 'bottomtopup.dart';

class BoxImageDua extends StatefulWidget {
  const BoxImageDua({Key? key}) : super(key: key);

  @override
  State<BoxImageDua> createState() => _BoxImageDuaState();
}

class _BoxImageDuaState extends State<BoxImageDua> {
  String backgroundImage = 'assets/topup.png';
  bool _showTopUp = true;
  bool _showJoki = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black.withOpacity(0.8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImage),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                height: 360,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(100, 0)),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.black.withOpacity(0.7),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                backgroundImage = 'assets/topup.png';
                                _showJoki = false;
                                _showTopUp = true;
                              });
                            },
                            child: Text(
                              'Top Up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          TextButton(
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(100, 0)),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.black.withOpacity(0.7),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                backgroundImage = 'assets/joki.png';
                                _showJoki = true;
                                _showTopUp = false;
                              });
                            },
                            child: Text(
                              'Jasa Joki',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Visibility(visible: _showTopUp, child: BottomTopUp()),
          Visibility(visible: _showJoki, child: BottomJoki()),
        ],
      ),
    );
  }
}
