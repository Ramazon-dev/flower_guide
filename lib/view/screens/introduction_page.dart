import 'package:flower_guide/core/constants/images.dart';
import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            MyImages.intro,
            fit: BoxFit.cover,
            height: getUniqueH(490.6),
            width: getUniqueW(375.0),
          ),
          Container(
            margin: EdgeInsets.only(
              top: getUniqueH(448.0),
            ),
            height: getUniqueH(364),
            width: getUniqueW(375.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  getUniqueW(42.0),
                ),
              ),
              color: MyColors.light,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getUniqueH(36.0),
                    left: getUniqueW(24.0),
                    right: getUniqueW(103.2),
                  ),
                  child: Text(
                    "Dont just think green, live green",
                    style: TextStyle(
                      fontSize: getUniqueW(31.0),
                      fontWeight: FontWeight.w600,
                      letterSpacing: getUniqueW(-2),
                      color: MyColors.dark,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getUniqueH(17.0),
                    left: getUniqueW(24.0),
                    right: getUniqueW(15.0),
                  ),
                  child: Container(
                    height: getUniqueH(88.0),
                    width: getUniqueW(336.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I'm planting a tree to remind me to be open and kindhearted.",
                          style: TextStyle(
                            fontSize: getUniqueW(16.0),
                            fontWeight: FontWeight.w400,
                            letterSpacing: getUniqueW(-0.2),
                            color: MyColors.dark,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: getUniqueH(20.0),
                        ),
                        Text(
                          "― Andrea Koehle Jones",
                          style: TextStyle(
                            fontSize: getUniqueW(16.0),
                            fontWeight: FontWeight.w400,
                            letterSpacing: getUniqueW(-0.2),
                            color: MyColors.dark,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getUniqueH(55.0),
                    left: getUniqueW(24.0),
                    right: getUniqueW(30.0),
                    bottom: getUniqueH(60.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getUniqueH(22.0),
                        width: getUniqueW(283.0),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: getUniqueW(16.0),
                            fontWeight: FontWeight.w600,
                            letterSpacing: getUniqueW(-2),
                            color: MyColors.dark,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SvgPicture.asset(MyIcons.arrow),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
