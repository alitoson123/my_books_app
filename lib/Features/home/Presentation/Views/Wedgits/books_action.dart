import 'package:flutter/material.dart';
import 'package:my_books/Core/Widgets/text_button.dart';
import 'package:my_books/Features/home/Data/models/book_model/book_model.dart';
import 'package:my_books/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        myTextButton(
          backgroundColor: Color(0xff1C1C22),
          text: 'Free',
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            bottomLeft: Radius.circular(14),
          ),
        ),
        myTextButton(
          onPressed: () async {
            final Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);

            if (!(await canLaunchUrl(uri))) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Could not launch $uri')));
            } else {
              await launchUrl(uri);
            }
          },
          backgroundColor: Color(0xffEF6D0F),
          text: isAvailable(bookModel),
          style: Style.textStyle18,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        )
      ],
    );
  }

  String isAvailable(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not available';
    } else {
      return 'Free preview';
    }
  }
}
