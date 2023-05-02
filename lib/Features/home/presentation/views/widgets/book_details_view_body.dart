import 'package:bookly_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_desc.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          //book image
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: BookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),

          //book (title,author,rating)
          BookDetails(
            book: book,
          ),
          const SizedBox(
            height: 37.0,
          ),

          //book actions (buy,free previw)button
          BookActions(
            book: book,
          ),
          const SizedBox(
            height: 46.0,
          ),

          //book desc
          BookDesc(
            book: book,
          ),

          //similar books (title,BookslistView)
          SimilarBooks(
            book: book,
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}