import 'package:delivery/const/colors.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/introScreen";

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  int count = 0;
  final List<Map<String, String>> _pages = [
    {
      "image": "intro_1.jpg",
      "title": "Быстаря доставка еды",
      "desc": "Блюда на любой вкус, больший выбор из 1000 позиций",
    },
    {
      "image": "intro_2.png",
      "title": "Приготовлено из лучших продуктов",
      "desc": "Оплата наличным ибезналичным расчетом",
    },
    {
      "image": "intro_3.jpg",
      "title": "Быстаря доставка еды",
      "desc": "Блюда на любой вкус, больший выбор из 1000 позиций",
    }
  ];

  @override
  void initState() {
    _controller = PageController();
    // TODO: implement initState
    super.initState();
  }

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
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        Helper.getAssetName(_pages[index]["image"]!, "images"),
                      );
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 5,
                      backgroundColor: count == 0 ? AppColor.orange : AppColor
                          .placeholder,
                    ),
                    const SizedBox(width: 5,),
                    CircleAvatar(radius: 5,
                      backgroundColor: count == 1 ? AppColor.orange : AppColor
                          .placeholder,
                    ),
                    const SizedBox(width: 5,),
                    CircleAvatar(radius: 5,
                      backgroundColor: count == 2 ? AppColor.orange : AppColor
                          .placeholder,
                    ),
                  ],
                ),
                const SizedBox(),
                const SizedBox(height: 20,),
                Text(_pages[count]["title"]!),
                const SizedBox(height: 20,),
                Text(_pages[count]["desc"]!, textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/HomeScreen");
                  }, child: const Text("Далее"),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
