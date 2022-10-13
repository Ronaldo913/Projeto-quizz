import 'package:convite/pages/congratulations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Convite extends StatefulWidget {
  const Convite({Key? key}) : super(key: key);

  @override
  _ConviteState createState() => _ConviteState();
}

class _ConviteState extends State<Convite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfa8128),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 400,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: Image.network('https://media.tenor.com/JaQeDPGZvHoAAAAM/cute-cat.gif'),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'VOCÊ ACEITA?',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(
                      'SIM',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF893101),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: null,
                    child: const Text(
                      'NÃO',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFA3E6FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Congratulations();
        },
      ),
    );
  }
}
