import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitialState());
  final SearchRepo searchRepo;
  bool _closed = false;

  @override
  Future<void> close() {
    _closed = true;
    return super.close();
  }

  Future fetchSearchResults({required String search}) async {
    if (_closed) return;
    emit(SearchLoadingState());
    var results = await searchRepo.fetchSearchResults(search: search);
    results.fold(
          (failure) {
        if (_closed) return;
        emit(SearchFailureState(failure.errorMessage));
      },
          (book) {
        if (_closed) return;
        emit(SearchSuccessState(book));
      },
    );
  }
}