import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/best_seller_description.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/constants.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(KBookDetailsPath);
          },
          child: Row(
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
              BestSellerDescription(),
            ],
          ),
        );
      },
    );
  }
}
