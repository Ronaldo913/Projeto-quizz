import '../screens/correct_answer_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/incorrect_answer_two.dart';

class QuestionTwo extends StatefulWidget {
  const QuestionTwo({Key? key}) : super(key: key);

  @override
  _QuestionTwoState createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {
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
                    "images/caminho.png",
                    width: 250,
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 70),
                  const Text(
                    'Dos objetos abaixo, qual mais assemelha-se com o conceito empregado em PROO:',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: wrongPressed,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 51),
                          child: const Text(
                            'Lar',
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
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: wrongPressed,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: const Text(
                              'Site',
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: correctPressed,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 42),
                          child: const Text(
                            'Casa',
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
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: wrongPressed,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: const Text(
                              'Folha',
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
                      ),
                    ],
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
          return const CorrectAnswerTwo();
        },
      ),
    );
  }

  void wrongPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const IncorrectAnswerTwo();
        },
      ),
    );
  }
}
