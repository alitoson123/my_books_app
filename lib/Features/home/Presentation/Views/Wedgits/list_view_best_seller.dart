import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/book_description.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                height: 127,
                child: Padding(
                  padding: EdgeInsets.only(bottom: index == 4 ? 0 : 12),
                  child: ImageContainer(
                      myImage:
                          'assets/Images/71mdgnpEkSL._AC_UY327_FMwebp_QL65_.webp',
                      myWidth: 85),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              BookDescription(),
            ],
          );
        },
      ),
    );
  }
}
