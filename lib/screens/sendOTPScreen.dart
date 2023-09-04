import 'package:delivery/const/colors.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class SendOtpScreen extends StatelessWidget {
  static const routeName = "/SendOtpScreen";

  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Код подтверждения",
                style: Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPinput(),
                  OTPinput(),
                  OTPinput(),
                  OTPinput(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/newPwScreen");
                  },
                  child: const Text("Подтвердить"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Не пришло сообщение?"),
                  Text(
                    " Отправить повторно",
                    style: TextStyle(
                        color: AppColor.orange, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPinput extends StatelessWidget {
  const OTPinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "*",
              style: TextStyle(fontSize: 45),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
