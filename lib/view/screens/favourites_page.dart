import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getUniqueW(16.0), vertical: getUniqueH(16.0)),
            child: Text("Sevimli gullar", style: TextStyle(fontSize: getUniqueW(24.0), fontWeight: FontWeight.w600),),
          ),
          Flexible(
            child: StaggeredGridView.countBuilder(
              itemCount: 45,
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 4,
              padding: EdgeInsets.symmetric(horizontal: getUniqueW(16.0)),
              mainAxisSpacing: getUniqueW(16.0),
              crossAxisSpacing: getUniqueW(16.0),
              itemBuilder: (context, index) {
                return MyStaggeredItemCard(index);
              },
              staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
            ),
          ),
        ],
      ),
    );
  }
}
