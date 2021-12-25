import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class ResultsPage extends StatelessWidget {
  final String name;
  const ResultsPage(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          name,
          style: TextStyle(
              fontSize: getUniqueW(24.0),
              fontWeight: FontWeight.w600,
              color: MyColors.dark),
        ),
      ),
      body: SafeArea(
        child: Flexible(
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
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
