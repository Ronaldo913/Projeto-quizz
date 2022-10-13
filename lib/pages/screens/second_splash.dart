import 'package:convite/pages/questions/question_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondSplash extends StatefulWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  _SecondSplashState createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 10)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuestionOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                     width: 500,
                     child: Image.network("https://static.appgeek.com.br/imagens/dino-non-birthday-version-0.gif"),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'OLÁ, TARSIS MARINHO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF023059),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'SEJA BEM-VINDO AO PROGRAMMING QUIZZ',
                     textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF023059)
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
