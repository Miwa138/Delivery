import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback press;
  final Color color;
  final icon;

  CustomButton({
    required this.press,
    this.icon,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.add_shopping_cart)],
          ),
        ),
      ),
    );
  }
}
