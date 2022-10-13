import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../questions/question_three.dart';

class FourthSplash extends StatefulWidget {
  const FourthSplash({Key? key}) : super(key: key);

  @override
  _FourthSplashState createState() => _FourthSplashState();
}

class _FourthSplashState extends State<FourthSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => QuestionThree()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                Text(
                  'Splash 4',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
