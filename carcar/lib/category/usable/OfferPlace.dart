import 'package:flutter/material.dart';

class OfferPlace extends StatelessWidget {
  final Widget img;
  final String title;
  final int phone;
  const OfferPlace(
      {required this.img, required this.title, required this.phone});

  void assignNumber(int phone) {
    for (int i = 0; i < phone.toString().length; i++) {
      print(i);
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    assignNumber(phone);
    return Container(
      width: 353,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          img,
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('$title', style: TextStyle(fontFamily: 'Inter', fontSize: 15)),
            Text('Даваа - Баасан', style: TextStyle(fontSize: 12)),
            Text('09:00 - 18:00', style: TextStyle(fontSize: 12))
          ]),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            width: 116,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/Vectorphone.png'),
                Text('9411-8008')
              ],
            ),
          )
        ],
      ),
    );
  }
}
