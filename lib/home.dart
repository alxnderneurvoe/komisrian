import 'package:apk_rian/ui/boximage.dart';
import 'package:flutter/material.dart';

import 'bar/nav.dart';
import 'bar/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          SizedBox(
            height: 20,
            width: double.infinity,
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          SizedBox(
            child: Container(
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                color: Colors.black.withOpacity(0.8),
                child: Image.asset('assets/mdl.png')),
          ),
          SizedBox(
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              color: Colors.black.withOpacity(0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 0),
                  const Text(
                    'Mobile Legend Development League',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      navToHome(context);
                    },
                    child: const Text(
                      'Event',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const BoxImage()
        ],
      ),
      drawer: const SideBar(),
    );
  }
}
