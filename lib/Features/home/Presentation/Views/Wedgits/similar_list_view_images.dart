import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_books/Core/Widgets/displaying_failure.dart';
import 'package:my_books/Features/home/Presentation/View_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_books/Features/home/Presentation/View_models/similar_books_cubit/similar_books_state.dart';
import 'package:my_books/Features/home/Presentation/Views/Wedgits/image_container.dart';

class similarListViewImages extends StatelessWidget {
  const similarListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
        builder: (context, state) {
          if(state is SuccessSimilarBooksState)
          {
            return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.bookList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: index == 4 ? 0 : 12),
                child: ImageContainer(
                  myWidth: 80,
                  imageUrl:
                      state.bookList[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            },
          );
          }
         else if (state is failureSimilarBooksState) {
          return DisplayingFailure(errMessage: state.errMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        },
      ),
    );
  }
}
