import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/list_view_best_seller.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/list_view_images.dart';
import 'package:my_books/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: KbackgroudColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Images.logo,
              width: 120,
            ),
            IconButton(
                onPressed: () {
                  GoRouter.of(context).push(KSearchViewPath);
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
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
