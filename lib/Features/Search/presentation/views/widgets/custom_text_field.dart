import 'package:bookly_app/Features/Search/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextfied extends StatelessWidget {
  const CustomTextfied({super.key});
  final InputBorder border =
  const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey));
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      onChanged: (value) {
        BlocProvider.of<SearchCubit>(context).fetchSearchResults(search: value);
      },
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        hintText: 'Search',
      ),
    );
  }
}