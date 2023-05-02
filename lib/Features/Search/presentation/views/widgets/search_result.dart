import 'package:bookly_app/Features/Search/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/results_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          if (state.books.isEmpty) {
            return Center(
              child: Text(
                'No Results',
                style: Styles.text14,
              ),
            );
          } else {
            return ResultsListView(
              books: state.books,
            );
          }
        } else if (state is SearchFailureState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    state.errMessage,
                    style: Styles.text14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Lottie.asset(
                    'assets/lotties/error.json',
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),
            ),
          );
        } else if (state is SearchLoadingState) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: LinearProgressIndicator(),
          );
        } else {
          return Text(
            'Search for any book',
            style: Styles.text14,
          );
        }
      },
    );
  }
}