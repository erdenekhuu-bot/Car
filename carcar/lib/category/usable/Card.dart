import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final Widget img;
  final String txt;

  const Cart({required this.img, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xff404040),
            borderRadius: BorderRadius.circular(60),
          ),
          child: img,
        ),
        Text('$txt', style: TextStyle(fontSize: 10)),
      ],
    );
  }
}
