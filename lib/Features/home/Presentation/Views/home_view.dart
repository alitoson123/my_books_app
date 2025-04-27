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
        padding: const EdgeInsets.all(12),
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
         ListViewBestSeller()
          ],
        ),
      ),
    );
  }
}
