import 'package:flutter/material.dart';

class AnimationText extends StatelessWidget {
  const AnimationText({super.key, required this.animation});
  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text('Read free books'),
          ),
        );
      },
    );
  }
}
