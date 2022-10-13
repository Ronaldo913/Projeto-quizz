import 'package:convite/pages/screens/incorrect_answer_three.dart';

import '../screens/convite_splash.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://meneguite.com/2017/10/01/golang-desbravando-uma-linguagem-de-programacao-parte-1/001.gif",
                    width: 250,
                    height: 250,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Qual a sua linguagem de programação favorita?',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF084870),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: wrongPressed,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: const Text(
                            'GoLang',
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
                              'Python',
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
                        onPressed: wrongPressed,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 42),
                          child: const Text(
                            'Java',
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
                          onPressed: onPressed,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: const Text(
                              'Flutter',
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

  void wrongPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const IncorrectAnswerThree();
        },
      ),
    );
  }
}
