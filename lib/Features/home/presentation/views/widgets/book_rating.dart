import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.rate, required this.count});
  final dynamic rate;
  final int? count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Text(
          rate == null ? '-' : '$rate',
          style: Styles.text16,
        ),
        const SizedBox(
          width: 9.0,
        ),
        Text(
          count == null ? '0' : '($count)',
          style: Styles.text14,
        )
      ],
    );
  }
}