import 'package:delivery/const/colors.dart';
import 'package:delivery/login/login_screen.dart';
import 'package:delivery/screens/forgetPwScreen.dart';
import 'package:delivery/screens/homeScreen.dart';
import 'package:delivery/screens/introScreen.dart';
import 'package:delivery/screens/landingScreen.dart';
import 'package:delivery/screens/newPpScreen.dart';
import 'package:delivery/screens/sendOTPScreen.dart';
import 'package:delivery/screens/signUpScreen.dart';
import 'package:delivery/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Metropolis",
          primarySwatch: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.orangeAccent,
              ),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(
                StadiumBorder(),
              ),
              elevation: MaterialStateProperty.all(0),
            ),
          ),
          textTheme: const TextTheme(
            headline6: TextStyle(color: AppColor.primary, fontSize: 25),
            headline5: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(
              color: AppColor.secondary,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
        routes: {
          LandingScreen.routeName: (context) => const LandingScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
          ForgetPwScreen.routeName: (context) => const ForgetPwScreen(),
          SendOtpScreen.routeName: (context) => const SendOtpScreen(),
          NewPwScreen.routeName: (context) => const NewPwScreen(),
          IntroScreen.routeName: (context) => IntroScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
        });
  }
}
