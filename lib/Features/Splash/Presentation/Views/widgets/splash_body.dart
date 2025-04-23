import 'package:flutter/material.dart';
import 'package:my_books/Features/Splash/Presentation/Views/widgets/animation_text..dart';
import 'package:my_books/constants.dart';

class SplahBody extends StatefulWidget {
  const SplahBody({super.key});

  @override
  State<SplahBody> createState() => _SplahBodyState();
}

class _SplahBodyState extends State<SplahBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    animationMethod();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo),
        AnimationText(animation: animation),
      ],
    );
  }

  void animationMethod() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(controller);
    controller.forward();
  }
}
