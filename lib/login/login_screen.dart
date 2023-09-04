import 'package:delivery/screens/forgetPwScreen.dart';
import 'package:delivery/utils/customTextField.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: SizedBox(
          height: Helper.getScreenHeight(context),
          width: Helper.getScreenWidth(context),
          child: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "Вход в систему",
                      style: Helper.getTheme(context).headline6,
                    ),
                    const SizedBox(
                      height: 15,
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
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/loginScreen');
                          }, child: const Text("Войти")),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/restpwScreen');
                      },
                      child: const Text("Забыли пароль?"),
                    ),
                    const Spacer(flex: 2,),
                    const Text("Войти через:"),
                    const Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.purple),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/loginScreen');
                          }, child: const Text("Google аккаунт")),
                    ),
                    const Spacer(flex: 4,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/SignUpScreen');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Нет аккаунта?"),
                          Text(" Создать", style: TextStyle(color: Colors.purple),),
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

