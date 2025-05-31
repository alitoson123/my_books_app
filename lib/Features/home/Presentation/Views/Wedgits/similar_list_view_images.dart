import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';

class similarListViewImages extends StatelessWidget {
  const similarListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 4 ? 0 : 12),
            child: ImageContainer(
              myImage: 'assets/Images/81BE7eeKzAL._AC_UY327_FMwebp_QL65_.webp',
              myWidth: 80,
            ),
          );
        },
      ),
    );
  }
}
