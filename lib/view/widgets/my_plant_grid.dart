import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyPlantGrid extends StatelessWidget {
  const MyPlantGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StaggeredGridView.countBuilder(
        itemCount: 45,
        crossAxisCount: 4,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: getUniqueW(16.0)),
        mainAxisSpacing: getUniqueW(16.0),
        crossAxisSpacing: getUniqueW(16.0),
        itemBuilder: (context, index) {
          return MyStaggeredItemCard(index);
        },
        staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
      );
  }
}
