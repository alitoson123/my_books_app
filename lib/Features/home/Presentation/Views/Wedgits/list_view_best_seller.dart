import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books/Core/Widgets/displaying_failure.dart';
import 'package:my_books/Features/home/Presentation/View_models/newest_book_cubit/newest_book_cubit.dart';
import 'package:my_books/Features/home/Presentation/View_models/newest_book_cubit/newest_book_states.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/best_seller_description.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';
import 'package:my_books/constants.dart';

class ListViewNewestSeller extends StatelessWidget {
  const ListViewNewestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is SuccessNewestBooksState) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.bookList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(KBookDetailsPath, extra: state.bookList[index]);
                },
                child: Row(
                  children: [
                    SizedBox(
                      height: 127,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: index == 4 ? 0 : 12),
                        child: ImageContainer(
                          myWidth: 85,
                          imageUrl: state
                              .bookList[index].volumeInfo.imageLinks.thumbnail,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    BestSellerDescription.NewestSellerDescription(
                      bookModel: state.bookList[index],
                    ),
                  ],
                ),
              );
            },
          );
        } else if (state is failureNewestBooksState) {
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
