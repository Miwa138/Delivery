import 'package:delivery/login/login_screen.dart';
import 'package:delivery/utils/customTextField.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/SignUpScreen";

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: SafeArea(
            child: Container(
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "Регистрация",
                      style: Helper.getTheme(context).headline6,
                    ),
                    Spacer(),
                    const CustomTextInput(
                      hintText: "Имя",
                    ),
                    const Spacer(),
                    const CustomTextInput(
                      hintText: "Город",
                    ),
                    const Spacer(),
                    const CustomTextInput(
                      hintText: "Номер телефона",
                    ),
                    const Spacer(),
                    const CustomTextInput(
                      hintText: "Email",
                    ),
                    const Spacer(),
                    const CustomTextInput(
                      hintText: "Пароль",
                    ),
                    const Spacer(),
                    const CustomTextInput(
                      hintText: "Подтвердите пароль",
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/loginScreen');
                          }, child: const Text("Регистрация"),),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/loginScreen');
                      }, child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("У вас уже есть аккаунт?"),
                        Text(" Войти",style: TextStyle(color: Colors.purple),)
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
