import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/login_signup.dart';


/*void main() {
  runApp(Splash());
}*/

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashState extends StatefulWidget {
  @override
  _SplashStateState createState() => _SplashStateState();
}
class _SplashStateState extends State<SplashState> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginSignUp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}