import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class DaftarTur extends StatefulWidget {
  const DaftarTur({super.key});

  @override
  State<DaftarTur> createState() => _DaftarTurState();
}

class _DaftarTurState extends State<DaftarTur> {
  final Uri _urlWA = Uri.parse('https://wa.me/6289516077612');

  Future<void> _launchWA() async {
    if (!await launchUrl(_urlWA)) {
      throw Exception('Could not launch $_urlWA');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade300,
                height: 70,
                width: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/wa.png'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.greenAccent.shade400,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: 70,
                width: 200,
                child: TextButton(
                  onPressed: _launchWA,
                  child: const Text(
                    'Klik Menuju Pendaftaran',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 44, 250, 192)),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (Route route) => false);
            },
            child: const Text(
              'Back',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
