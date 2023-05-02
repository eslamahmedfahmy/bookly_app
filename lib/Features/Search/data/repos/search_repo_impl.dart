import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  ApiServices apiServices;
  SearchRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResults(
      {required String search}) async {
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?q=intitle:$search&Filtering=free-ebooks&download=epub');
      List<BookModel> books = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}