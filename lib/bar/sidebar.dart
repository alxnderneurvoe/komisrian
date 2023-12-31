import 'package:apk_rian/bar/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.8),
      child: ListView(
        children: [
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BUTTON X
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close_sharp,
                    color: Colors.white,
                  ))
            ],
          ),
          ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text('Home',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {
                navToHome(context);
              }),
          ListTile(
              leading: const Icon(
                CupertinoIcons.cart_fill,
                color: Colors.white,
              ),
              title: const Text('Top Up',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {
                navToPage(context);
              }),
          ListTile(
              leading: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              title: const Text(
                'Daftar Tournament',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                navToDaftar(context);
              })
        ],
      ),
    );
  }
}
