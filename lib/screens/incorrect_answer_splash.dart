import 'package:convite/questions/question_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncorrectAnswerSplash extends StatefulWidget {
  const IncorrectAnswerSplash({Key? key}) : super(key: key);

  @override
  _IncorrectAnswerSplashState createState() => _IncorrectAnswerSplashState();
}

class _IncorrectAnswerSplashState extends State<IncorrectAnswerSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => QuestionOne()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFCADDFF),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset("images/error.png"),
            ),
            const SizedBox(height: 20),
            Text(
              'Ops! Resposta incorreta.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Tente novamente.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
