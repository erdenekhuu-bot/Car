import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget img;
  const BackgroundImage({required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 150,
      child: img,
    );
  }
}
