// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import '/ui/galer.dart';
import '/ui/turnamen.dart';
import 'package:flutter/material.dart';

class BoxImage extends StatefulWidget {
  const BoxImage({Key? key}) : super(key: key);

  @override
  State<BoxImage> createState() => _BoxImageState();
}

class _BoxImageState extends State<BoxImage> {
  bool _showTournamentPage = true;
  bool _showPlayerGalleryPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 320,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'MDL MLBB S7',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '30 Maret 2023',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hosted By',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Image.asset('assets/trmm.png',
                                alignment: Alignment.center),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Multimedia E-Sport Community',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.black.withOpacity(0.7),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _showTournamentPage = true;
                                _showPlayerGalleryPage = false;
                              });
                            },
                            child: Text(
                              'Detail Tournament',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.black.withOpacity(0.7),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _showTournamentPage = false;
                                _showPlayerGalleryPage = true;
                              });
                            },
                            child: Text(
                              'Galeri Pemain',
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
          Visibility(
            visible: _showTournamentPage,
            child: Turnament(),
          ),
          Visibility(
            visible: _showPlayerGalleryPage,
            child: GaleriPemain(),
          ),
        ],
      ),
    );
  }
}
