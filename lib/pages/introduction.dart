import 'home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF033E8C),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/caminho.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Se fôssemos fazer uma pergunta sobre algo importante, seria mais provável você responder sim ou não?',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 130.0),
                      child: const Text(
                        'SIM',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF084870),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFA3E6FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 130.0),
                      child: const Text(
                        'NÃO',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF084870),
                        ),
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

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }
}
