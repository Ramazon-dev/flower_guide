import 'package:flower_guide/view/widgets/detail_footer.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({Key? key}) : super(key: key);
   final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            DetailPageCarousel(),
            const DetailsFooter(),

          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() => AppBar(
  );


}
