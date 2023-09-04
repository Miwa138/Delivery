import 'dart:async';
import 'package:delivery/screens/landingScreen.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';


class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
late Timer _timer;

@override
  void initState() {
   _timer = Timer(Duration(milliseconds: 4000), (){
     Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
   });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Helper.getAssetName("background.png", "images"),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/chif_logo.png", width: 250, height: 250,),
            ),
          ],
        ),
      ),
    );
  }
}
