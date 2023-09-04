import 'package:delivery/utils/customTextField.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";

  const ForgetPwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  "Сбросить пароль",
                  style: Helper.getTheme(context).headline6,
                ),
                const Spacer(),
                const CustomTextInput(hintText: "Email",),
                const SizedBox(height: 40,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed("/SendOtpScreen");
                  }, child: const Text('Отправить'),),
                ),
                const Spacer(flex: 6,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
