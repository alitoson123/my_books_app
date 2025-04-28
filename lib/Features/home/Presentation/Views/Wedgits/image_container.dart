import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key, required this.myImage, required this.myWidth});

  final String myImage;
  final double myWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: myWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(myImage),
        ),
      ),
    );
  }
}
