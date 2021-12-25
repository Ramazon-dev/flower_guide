import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyCategoryCard extends StatelessWidget {
  final int index;
  const MyCategoryCard(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ResultsPage('Result Name '),
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://source.unsplash.com/random/$index"),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: MyColors.innerBorder),
          borderRadius: BorderRadius.circular(
            getUniqueW(16.0),
          ),
          color: MyColors.accent,
        ),
        height: getUniqueH(152.0),
        width: getUniqueW(156.0),
        child: Container(
          padding: EdgeInsets.only(
            top: getUniqueH(10.0),
            left: getUniqueW(16.0),
          ),
          height: getUniqueH(42.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyColors.light,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                getUniqueW(14.50),
              ),
              bottomRight: Radius.circular(
                getUniqueW(14.50),
              ),
            ),
          ),
          child: Text(
            "Succulent",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: getUniqueW(16.0),
              fontWeight: FontWeight.w400,
              letterSpacing: getUniqueW(-2),
              color: MyColors.dark,
            ),
          ),
        ),
      ),
    );
  }
}
