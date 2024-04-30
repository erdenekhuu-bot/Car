import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  const SubTitle({required this.firstTitle, required this.secondTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('$firstTitle',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter'))),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child:
                        Text('$secondTitle', style: TextStyle(fontSize: 14))),
                Icon(Icons.arrow_forward_ios_outlined, size: 15)
              ],
            )),
      ],
    );
  }
}
