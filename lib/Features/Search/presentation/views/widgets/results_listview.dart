import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ResultsListView extends StatelessWidget {
  const ResultsListView({
    super.key,
    required this.books,
  });
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: books.length,
        itemBuilder: (context, index) => BestSellerItem(
          book: books[index],
        ),
      ),
    );
  }
}