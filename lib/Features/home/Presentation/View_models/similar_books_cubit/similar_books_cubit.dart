import 'package:bloc/bloc.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';
import 'package:my_books/Features/home/Presentation/View_models/similar_books_cubit/similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(InitialSimilarBooksState());

  final HomeRepo homeRepo;

  void SimilarBooksCubitMethod() async {
    emit(LoadingSimilarBooksState());
    var result = await homeRepo.fetchSimilarBooks();
    result.fold((failure) {
      emit(failureSimilarBooksState(errMessage: failure.errMessage));
    }, (success) {
      emit(SuccessSimilarBooksState(bookList: success));
    });
  }
}
