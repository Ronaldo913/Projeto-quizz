import 'package:convite/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdSplash extends StatefulWidget {
  const ThirdSplash({Key? key}) : super(key: key);

  @override
  _ThirdSplashState createState() => _ThirdSplashState();
}

class _ThirdSplashState extends State<ThirdSplash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    /*Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 400,
              child: Image.asset("images/splash3.png"),
            ),
            const SizedBox(height: 32),
            Text(
              'VAMOS LÁ!',
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
    );
  }
}
