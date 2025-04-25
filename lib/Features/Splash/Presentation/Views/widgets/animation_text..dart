import 'package:flutter/material.dart';

class AnimationText extends StatelessWidget {
  final Animation<Offset> animation;

  const AnimationText({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        child: Text(
          'Read free books',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
