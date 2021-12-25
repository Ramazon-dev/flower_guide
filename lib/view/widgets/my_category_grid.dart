import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/view/widgets/my_category_card.dart';
import 'package:flutter/material.dart';

class MyCategoryGrid extends StatelessWidget {
  const MyCategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 12,
        padding: EdgeInsets.fromLTRB(
          getUniqueW(16.0),
          getUniqueH(2.0),
          getUniqueW(16.0),
          getUniqueW(16.0),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          mainAxisSpacing: getUniqueH(16),
          crossAxisSpacing: getUniqueW(16),
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return MyCategoryCard(index);
        });
  }
}
