import 'package:bloc/bloc.dart';
import 'package:my_books/Features/home/Data/repos/home_repo.dart';
import 'package:my_books/Features/home/Presentation/View_models/featured_books_cubit/featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(InitialFeaturedBooksState());

  final HomeRepo homeRepo;

 Future<void> FeaturedBooksCubitMethod() async {
    emit(LoadingFeaturedBooksState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(failureFeaturedBooksState(errMessage:failure.errMessage ));
    }, (success) {
      emit(SuccessFeaturedBooksState(bookList: success));
    });
  }


  
}
