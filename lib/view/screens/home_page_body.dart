import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE SECTION
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Bosh sahifa",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getUniqueW(16),
              ),
            ),
          ),
        ),
        
        // SEARCH SECTION
        Padding(
            padding: EdgeInsets.fromLTRB(
              getUniqueW(16),
              getUniqueH(0),
              getUniqueW(16),
              getUniqueH(16),
            ),
            child: const MySearchTextField()),

        // TABBAR SECTION
        const MyTabBar(),
        SizedBox(
          height: getUniqueH(16),
        ),

        // LISTVIEW SECTION
        Flexible(
          child: Provider.of<TabBarProvider>(context).index == 2
              ? const MyPlantGrid()
              : const MyCategoryGrid(),
        ),
      ],
    );
  }
}
