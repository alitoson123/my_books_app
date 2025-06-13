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
              myWidth: 80,
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUNVld5ZvPS1ASw4QFkZw3lbH-m5fRh1pjLA&s',
            ),
          );
        },
      ),
    );
  }
}
