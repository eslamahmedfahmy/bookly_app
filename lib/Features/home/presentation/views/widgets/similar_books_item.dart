import 'package:bookly_app/Features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsViewPath, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: BookImage(
          borderRadius: 8.0,
          imageUrl: book.volumeInfo.imageLinks?.thumbnail,
        ),
      ),
    );
  }
}