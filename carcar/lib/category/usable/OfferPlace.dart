import 'package:flutter/material.dart';

class OfferPlace extends StatelessWidget {
  final Widget img;
  final String name;
  const OfferPlace({required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 353,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Jello'),
          Text('$name', style: TextStyle(fontFamily: 'Inter')),
          Text('Phone')
        ],
      ),
    );
  }
}
