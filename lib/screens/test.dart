// import 'package:delivery/const/colors.dart';
// import 'package:delivery/utils/helper.dart';
// import 'package:flutter/material.dart';
//
// import '../utils/custom_button.dart';
//
// class HomeScreen extends StatelessWidget {
//   static const routeName = "/HomeScreen";
//
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//
//     double side1 = width * 0.90;
//     double side2 = height * 0.52;
//
//     double side3 = width * 0.90;
//     double side4 = height * 0.52;
//
//     double side5 = width * 0.90;
//     double side6 = height * 0.52;
//
//     double side7 = width * 0.09;
//     double side8 = height * 0.09;
//
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Добро пожаловать",
//                       style: Helper.getTheme(context).headline6,
//                     ),
//                     const Icon(Icons.shopping_cart),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text("Доставка еды"),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton(
//                     value: "current location",
//                     items: const [
//                       DropdownMenuItem(
//                         child: Text("Current Location"),
//                         value: "current location",
//                       )
//                     ],
//                     onChanged: (value) {},
//                     icon: const Icon(
//                       Icons.arrow_drop_down,
//                       size: 30,
//                     ),
//                     style: Helper.getTheme(context).headline5,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const ShapeDecoration(
//                     shape: StadiumBorder(),
//                     color: AppColor.placeholderBg,
//                   ),
//                   child: const TextField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       prefixIcon: Icon(Icons.search),
//                       hintText: "Поиск",
//                       hintStyle: TextStyle(
//                         color: AppColor.placeholder,
//                         fontSize: 18,
//                       ),
//                       contentPadding: EdgeInsets.only(
//                         top: 12,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           CategoryCard(
//                             image: Image.asset(
//                               Helper.getAssetName("burger.jpg", "images"),
//                               fit: BoxFit.cover,
//                             ),
//                             name: "Бургер",
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           CategoryCard(
//                             image: Image.asset(
//                               Helper.getAssetName("lagman.jpg", "images"),
//                               fit: BoxFit.cover,
//                             ),
//                             name: "Лагман",
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           CategoryCard(
//                             image: Image.asset(
//                               Helper.getAssetName("suwi.jpg", "images"),
//                               fit: BoxFit.cover,
//                             ),
//                             name: "Суши",
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           CategoryCard(
//                             image: Image.asset(
//                               Helper.getAssetName("borw.jpg", "images"),
//                               fit: BoxFit.cover,
//                             ),
//                             name: "Борщь",
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Популярные блюда",
//                       style: Helper.getTheme(context).headline5,
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: const Text("Показать все"),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 450,
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 200,
//                       width: double.infinity,
//                       child: Image.asset(
//                         Helper.getAssetName("pizza.jpg", "images"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, top: 10),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.red,
//                                   size: 20,
//                                 ),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.red,
//                                   size: 20,
//                                 ),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.red,
//                                   size: 20,
//                                 ),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.red,
//                                   size: 20,
//                                 ),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.red,
//                                   size: 20,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "Пепперони",
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: height * 0.1,
//                                 ),
//                                 Stack(
//                                   children: [
//                                     Positioned(
//                                       top: height * 0.25,
//                                       right: width * 0.05,
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFfbfbfb),
//                                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                                         ),
//                                         height: side1,
//                                         width: side2,
//                                         child: Text(
//                                           "Цена:",
//                                           style: TextStyle(
//                                               color: Colors.black, fontSize: 20),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       top: height * 0.25,
//                                       right: width * 0.05,
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFfbfbfb),
//                                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                                         ),
//                                         height: side3,
//                                         width: side4,
//                                         child: Text(
//                                           "500",
//                                           style: TextStyle(
//                                               color: Colors.black, fontSize: 20),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       top: height * 0.25,
//                                       right: width * 0.05,
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFfbfbfb),
//                                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                                         ),
//                                         height: side5,
//                                         width: side6,
//                                         child: Text(
//                                           "P",
//                                           style: TextStyle(
//                                               color: Colors.black, fontSize: 20),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       top: height * 0.00,
//                                       right: width * 0.00,
//                                       child: Container(
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFfbfbfb),
//                                           borderRadius: BorderRadius.all(Radius.circular(15)),
//                                         ),
//                                         height: side7,
//                                         width: side8,
//                                         child: CustomButton(
//                                           text: "Купить",
//                                           fontSize: 20,
//                                           color: Colors.red,
//                                           press: () {},
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           "Избранное",
//                           style: Helper.getTheme(context).headline5,
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryCard extends StatelessWidget {
//   CategoryCard({
//     super.key,
//     required Image image,
//     required String name,
//   })  : _image = image,
//         _name = name;
//
//   final Image _image;
//   final String _name;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: SizedBox(
//             width: 100,
//             height: 100,
//             child: _image,
//           ),
//         ),
//         Text(
//           _name,
//           style: Helper.getTheme(context).headline5!.copyWith(
//             color: AppColor.primary,
//             fontSize: 16,
//           ),
//         ),
//       ],
//     );
//   }
// }
