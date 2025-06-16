import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Core/Widgets/displaying_failure.dart';
import 'package:my_books/Features/home/Presentation/View_models/featured_books_cubit/featured_books_cubit_cubit.dart';
import 'package:my_books/Features/home/Presentation/View_models/featured_books_cubit/featured_books_cubit_state.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/constants.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is SuccessFeaturedBooksState) {
          return SizedBox(
            height: 245,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.bookList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == 4 ? 0 : 12),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push(KBookDetailsPath, extra: state.bookList[index]);
                    },
                    child: ImageContainer(
                        myWidth: 150,
                        imageUrl: state
                            .bookList[index].volumeInfo.imageLinks.thumbnail),
                  ),
                );
              },
            ),
          );
        } else if (state is failureFeaturedBooksState) {
          return DisplayingFailure(errMessage: state.errMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
