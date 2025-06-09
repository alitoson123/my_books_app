import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';
import 'package:my_books/Features/home/Presentation/View_models/newest_book_cubit/newest_book_states.dart';

class NewestBookCubit extends Cubit<NewestBooksStates> {
  NewestBookCubit(this.homeRepo) : super(InitialNewestBooksState());

  final HomeRepo homeRepo;

  void NewestBookCubitMethod() async {
    emit(LoadingNewestBooksState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(failureNewestBooksState(errMessage:failure.errMessage ));
    }, (success) {
      emit(SuccessNewestBooksState());
    });
  }
}
