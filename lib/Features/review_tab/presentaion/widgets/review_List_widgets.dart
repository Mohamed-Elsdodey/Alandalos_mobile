import 'dart:math';
import 'package:flutter/material.dart';
import 'package:school/Features/review_tab/presentaion/widgets/reviewListViewWidget.dart';
import 'package:school/core/utils/constants.dart';
class ReviewListWidgets extends StatefulWidget {
  const ReviewListWidgets({super.key});

  @override
  State<ReviewListWidgets> createState() => _ReviewListWidgetsState();
}

class _ReviewListWidgetsState extends State<ReviewListWidgets> {
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return ReviewListView(
          color: listColor[_random.nextInt(listColor.length)],
        );
      },
      padding: const EdgeInsets.only(top: 20, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
