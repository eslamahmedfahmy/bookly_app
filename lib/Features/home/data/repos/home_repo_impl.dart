import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?q=subject:Success &Filtering=free-ebooks&maxResults=40&download=epub');
      List<BookModel> newestBooks = [];
      for (var item in data['items']) {
        newestBooks.add(BookModel.fromJson(item));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?q=subject:Self-Help&Sorting=relevance &Filtering=free-ebooks&maxResults=40&download=epub');
      List<BookModel> featuredBooks = [];
      for (var item in data['items']) {
        featuredBooks.add(BookModel.fromJson(item));
      }
      return right(featuredBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?q=subject:$category&Sorting=relevance &Filtering=free-ebooks&maxResults=40&download=epub');
      List<BookModel> featuredBooks = [];
      if (data['items'] != null) {
        for (var item in data['items']) {
          featuredBooks.add(BookModel.fromJson(item));
        }
      }
      return right(featuredBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}