import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_books/Core/Service%20Locator/service_locator.dart';
import 'package:my_books/Features/home/Data/repos/home_repo_impl.dart';
import 'package:my_books/Features/home/Presentation/View_models/featured_books_cubit/featured_books_cubit_cubit.dart';
import 'package:my_books/Features/home/Presentation/View_models/newest_book_cubit/newest_book_cubit.dart';
import 'package:my_books/constants.dart';

void main() {
  setupServiceLocator();
  runApp(const MyBooks());
}

class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: KbackgroudColor,
          brightness: Brightness.light,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
