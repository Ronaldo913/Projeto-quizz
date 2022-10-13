import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../introduction.dart';

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
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Introduction()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          color: const Color(0xFF033E8C),
          child: Center(
              child: Column(
                children: [
                  Container(
                     width: 200,
                     height: 200,
                     child: Image.asset("images/splash2.png"),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Olá, Tarsis Marinho!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Seja bem-vindo ao Programming Quiz da 913!',
                     textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
