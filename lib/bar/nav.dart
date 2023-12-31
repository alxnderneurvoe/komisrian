import 'package:apk_rian/ui/daftartur.dart';
import 'package:apk_rian/ui/topup-joki/hometopup.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import '../ui/shop.dart';

void navToPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ShopPage()),
  );
}

void navToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}

void navToHomeDua(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePageDua()),
  );
}

void navToDaftar(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DaftarTur()),
  );
}
