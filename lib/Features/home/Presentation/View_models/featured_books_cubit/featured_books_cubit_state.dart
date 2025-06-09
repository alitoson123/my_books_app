class FeaturedBooksStates {}

class InitialFeaturedBooksState extends FeaturedBooksStates {}

class LoadingFeaturedBooksState extends FeaturedBooksStates {}

class SuccessFeaturedBooksState extends FeaturedBooksStates {}

class failureFeaturedBooksState extends FeaturedBooksStates {
  final String errMessage;

  failureFeaturedBooksState({required this.errMessage});

}
