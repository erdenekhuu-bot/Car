import 'package:flutter/material.dart';

class MapFirstMenu extends StatelessWidget {
  final String name;
  const MapFirstMenu({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 1),
        width: 152,
        height: 40,
        decoration: BoxDecoration(
            color: Color(0xff404040).withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$name',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}

class MapSecondMenu extends StatelessWidget {
  final String name;
  const MapSecondMenu({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: 192,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xff404040).withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('$name', style: TextStyle(color: Colors.white))]),
    );
  }
}
