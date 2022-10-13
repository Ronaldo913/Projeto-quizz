import '../questions/question_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CorrectAnswerSplash extends StatefulWidget {
  const CorrectAnswerSplash({Key? key}) : super(key: key);

  @override
  _CorrectAnswerSplashState createState() => _CorrectAnswerSplashState();
}

class _CorrectAnswerSplashState extends State<CorrectAnswerSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 8)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => QuestionTwo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20),
          color: Color(0xFFA3E6FF),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.network("https://i.gifer.com/origin/79/79dd786d7a64acddfc0f93eab70612fe.gif"),
                ),
                const SizedBox(height: 20),
                Text(
                  'Resposta correta!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF033E8C),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Continue assim :)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF033E8C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
