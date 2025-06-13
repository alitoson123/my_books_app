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
                    myWidth: 85,
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUNVld5ZvPS1ASw4QFkZw3lbH-m5fRh1pjLA&s',
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
         //     BestSellerDescription.NewestSellerDescription(),
            ],
          ),
        );
      },
    );
  }
}
