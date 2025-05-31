import 'package:flutter/material.dart';
import 'package:my_books/Core/Widgets/text_button.dart';
import 'package:my_books/constants.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        myTextButton(
          backgroundColor: Color(0xff1C1C22),
          text: '19.99 \$',
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            bottomLeft: Radius.circular(14),
          ),
        ),
        myTextButton(
          backgroundColor: Color(0xffEF6D0F),
          text: 'Free preview',
          style: Style.textStyle18,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        )
      ],
    );
  }
}
