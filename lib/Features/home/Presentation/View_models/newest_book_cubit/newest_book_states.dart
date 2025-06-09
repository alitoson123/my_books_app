class NewestBooksStates {}

class InitialNewestBooksState extends NewestBooksStates {}

class LoadingNewestBooksState extends NewestBooksStates {}

class SuccessNewestBooksState extends NewestBooksStates {}

class failureNewestBooksState extends NewestBooksStates {
  final String errMessage;

  failureNewestBooksState({required this.errMessage});

}
