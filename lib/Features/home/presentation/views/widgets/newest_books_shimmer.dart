import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBooksShimmer extends StatelessWidget {
  const NewestBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.grey[100]!,
            child: SizedBox(
                height: 125,
                child: Row(
                  children: [
                    AspectRatio(
                        aspectRatio: 2.05 / 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0)),
                        )),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //book title
                          Container(
                            height: 18,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          //author name
                          Container(
                            height: 16,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              //book price
                              Container(
                                width: 40,
                                height: 18,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              //book rating
                              Container(
                                width: 40,
                                height: 18,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}