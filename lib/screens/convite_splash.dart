import 'package:convite/questions/convite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConviteSplash extends StatefulWidget {
  const ConviteSplash({Key? key}) : super(key: key);

  @override
  _ConviteSplashState createState() => _ConviteSplashState();
}

class _ConviteSplashState extends State<ConviteSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Convite()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: [
            Text(
              'Você concluiu os requisitos para ser padrinho de formatura da turma 913.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              child: Image.asset("images/congrats.png"),
            ),
          ],
        ),
      ),
    );
  }
}
