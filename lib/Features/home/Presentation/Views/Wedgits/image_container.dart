import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key,  required this.myWidth, required this.imageUrl});

  final double myWidth;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        width: myWidth,
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
