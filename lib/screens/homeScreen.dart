import 'package:delivery/const/colors.dart';
import 'package:delivery/utils/helper.dart';
import 'package:flutter/material.dart';

import '../utils/custom_button.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Добро пожаловать",
                      style: Helper.getTheme(context).headline6,
                    ),
                    const Icon(Icons.shopping_cart),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Доставка еды"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: "current location",
                    items: const [
                      DropdownMenuItem(
                        child: Text("Current Location"),
                        value: "current location",
                      )
                    ],
                    onChanged: (value) {},
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                    style: Helper.getTheme(context).headline5,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: AppColor.placeholderBg,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Поиск",
                      hintStyle: TextStyle(
                        color: AppColor.placeholder,
                        fontSize: 18,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 12,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("burger.jpg", "images"),
                              fit: BoxFit.cover,
                            ),
                            name: "Бургер",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("lagman.jpg", "images"),
                              fit: BoxFit.cover,
                            ),
                            name: "Лагман",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("suwi.jpg", "images"),
                              fit: BoxFit.cover,
                            ),
                            name: "Суши",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("borw.jpg", "images"),
                              fit: BoxFit.cover,
                            ),
                            name: "Борщь",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Популярные блюда",
                      style: Helper.getTheme(context).headline5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Показать все"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PopularDishes(),
              PopularDishes(),
              PopularDishes(),
              PopularDishes(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Избранное",
                          style: Helper.getTheme(context).headline5,
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CategoryFavourites(
                              image: Image.asset(
                                Helper.getAssetName("burger.jpg", "images"),
                                fit: BoxFit.cover,
                              ),
                              name: "Бургер",
                              price: "Цена",
                              count: "350",
                              text: "P",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryFavourites(
                              image: Image.asset(
                                Helper.getAssetName("burger.jpg", "images"),
                                fit: BoxFit.cover,
                              ),
                              name: "Бургер",
                              price: "Цена",
                              count: "350",
                              text: "P",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryFavourites(
                              image: Image.asset(
                                Helper.getAssetName("burger.jpg", "images"),
                                fit: BoxFit.cover,
                              ),
                              name: "Бургер",
                              price: "Цена",
                              count: "350",
                              text: "P",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CategoryFavourites(
                              image: Image.asset(
                                Helper.getAssetName("burger.jpg", "images"),
                                fit: BoxFit.cover,
                              ),
                              name: "Бургер",
                              price: "Цена",
                              count: "350",
                              text: "P",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required Image image,
    required String name,
  })  : _image = image,
        _name = name;

  final Image _image;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        Text(
          _name,
          style: Helper.getTheme(context).headline5!.copyWith(
                color: AppColor.primary,
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}

class CategoryFavourites extends StatelessWidget {
  CategoryFavourites({
    super.key,
    required Image image,
    required String name, required this.price, required this.count, required this.text,
  })  : _image = image,
        _name = name;

  final Image _image;
  final String _name;
  final String price;
  final String count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),SizedBox(height: 10,),
        Text(
          _name,
          style: Helper.getTheme(context).headline5!.copyWith(
            color: AppColor.primary,
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            price,
            style: Helper.getTheme(context).headline5!.copyWith(
              color: AppColor.primary,
              fontSize: 16,
            ),
          ),
          Text(
            count,
            style: Helper.getTheme(context).headline5!.copyWith(
              color: AppColor.primary,
              fontSize: 16,
            ),
          ),
          Text(
            text,
            style: Helper.getTheme(context).headline5!.copyWith(
              color: AppColor.primary,
              fontSize: 16,
            ),
          ),
       Row(
         children: [
           SizedBox(
             width: 100,
             child: CustomButton(
               color: Colors.red,
               icon: "",
               press: () {},
             ),
           ),
         ],
       ),
        ],),
      ],
    );
  }
}


class PopularDishes extends StatefulWidget {
  const PopularDishes({super.key});

  @override
  State<PopularDishes> createState() => _PopularDishesState();
}

class _PopularDishesState extends State<PopularDishes> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double side1 = height * 0.06;
    double side2 = width * 0.90;

    double side3 = height * 0.06;
    double side4 = width * 0.30;

    return  SizedBox(
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              Helper.getAssetName("pizza.jpg", "images"),
              fit: BoxFit.cover,
            ),
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10),
              child: Row(
                children: [
                  Text(
                    "Пепперони",
                    style: TextStyle(
                        color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.17,
            ),
            Positioned(
              top: height * 0.09,
              left: width * 0.03,
              child: Container(
                height: side1,
                width: side2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        "Цена:",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        "500",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "Pуб.",
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.080,
              left: width * 0.68,
              child: Container(
                height: side3,
                width: side4,
                child: CustomButton(
                  color: Colors.red,
                  icon: "",
                  press: () {},
                ),
              ),
            ),
          ],)
        ],
      ),
    );
  }
}
