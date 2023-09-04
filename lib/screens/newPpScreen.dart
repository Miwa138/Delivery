import 'package:delivery/utils/customTextField.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName = "/newPwScreen";

  const NewPwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Новый пароль",
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(height: 20,),
                CustomTextInput(hintText: "Новый пароль"),
                SizedBox(height: 20,),
                CustomTextInput(hintText: "Подтвердите пароль"),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacementNamed("/introScreen");
                    }, child: Text("Подтвердить"),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
