import 'package:flutter/material.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/app_bar.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/list_view_best_seller.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/list_view_images.dart';
import 'package:my_books/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListViewImages(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Best seller',
                    style: Style.textStyle22,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: ListViewBestSeller(),
            )
          ],
        ),
      ),
    );
  }
}
