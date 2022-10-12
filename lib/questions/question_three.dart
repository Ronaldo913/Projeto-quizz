import 'package:convite/screens/convite_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionThree extends StatefulWidget {
  const QuestionThree({Key? key}) : super(key: key);

  @override
  _QuestionThreeState createState() => _QuestionThreeState();
}

class _QuestionThreeState extends State<QuestionThree> {
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
                  const Text(
                    'PERGUNTA 3',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(
                      'Próxima',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF084870),
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
          return const ConviteSplash();
        },
      ),
    );
  }
}
