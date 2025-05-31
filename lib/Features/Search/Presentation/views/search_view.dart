import 'package:flutter/material.dart';
import 'package:my_books/Features/Search/Presentation/views/widgets/search_result_list_view.dart';
import 'package:my_books/Features/Search/Presentation/views/widgets/text_field.dart';
import 'package:my_books/constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextField(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Search result',
              style: Style.textStyle20,
            ),
            Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
