import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
           size: 200,
         style: FlutterLogoStyle.horizontal,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 5),
        ),
      ),
    );
  }
}
