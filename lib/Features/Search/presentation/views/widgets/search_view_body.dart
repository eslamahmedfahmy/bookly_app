import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_result.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          //search bar
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomTextfied(),
          ),

          //search results
          SearchResult()
        ],
      ),
    );
  }
}