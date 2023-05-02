part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitialState extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchSuccessState extends SearchState {
  final List<BookModel> books;

  const SearchSuccessState(this.books);
}

class SearchFailureState extends SearchState {
  final String errMessage;

  const SearchFailureState(this.errMessage);
}