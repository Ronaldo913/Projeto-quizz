import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/correct_answer_splash.dart';
import '../screens/incorrect_answer_splash.dart';

class QuestionOne extends StatefulWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  _QuestionOneState createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF023059),
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
                    "images/devs.png",
                    width: 250,
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Analisando a imagem acima, pode-se dizer que o time de desenvolvedores retratado é composto por:',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: wrongPressed,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.0),
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF023059),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: wrongPressed,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.0),
                      child: Text(
                        '22',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF023059),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: correctPressed,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.0),
                      child: Text(
                        '35',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF023059),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: wrongPressed,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.0),
                      child: Text(
                        '80',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF023059),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
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

  void correctPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CorrectAnswerSplash();
        },
      ),
    );
  }

  void wrongPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const IncorrectAnswerSplash();
        },
      ),
    );
  }
}
