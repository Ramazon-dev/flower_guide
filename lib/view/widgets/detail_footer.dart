import 'package:flower_guide/view/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsFooter extends StatelessWidget {
  const DetailsFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getUniqueW(375.0),
      padding: EdgeInsets.symmetric(
        horizontal: getUniqueW(24.0),
        vertical: getUniqueH(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextWidget(
            "Flower class",
            color: MyColors.subtitleText,
            size: 16.0,
          ),
          SizedBox(height: getUniqueH(4.0)),
          MyTextWidget(
            'Fiddle leaf fig plant',
            color: MyColors.dark,
            size: 20.0,
            weight: FontWeight.w600,
          ),
          SizedBox(height: getUniqueH(24.0)),
          _showButtons(),
          SizedBox(height: getUniqueH(24.0)),
          MyTextWidget(
            'About',
            color: MyColors.dark,
            size: 20.0,
            weight: FontWeight.w600,
          ),

          MyTextWidget(_lorem),
        ],
      ),
    );
  }

  Row _showButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _setMenuButton(MyIcons.leaf, 'My Plants'),
        _setMenuButton(MyIcons.dropLed, 'How to care'),
        _setMenuButton(MyIcons.messageCircle, 'Reviews'),
        _setMenuButton(MyIcons.favouriteOutlined, 'Saved'),
      ],
    );
  }

  _setMenuButton(
    String icon,
    String label,
  ) =>
      Column(
        children: [
          Container(
            height: getUniqueH(56.0),
            width: getUniqueW(56.0),
            child: SvgPicture.asset(
              icon,
              height: getUniqueH(20.0),
              width: getUniqueW(20.0),
              fit: BoxFit.none,
              color: MyColors.dark,
            ),
            decoration: BoxDecoration(
              borderRadius: _buildRadius(16.0),
              color: MyColors.grey,
            ),
          ),
          SizedBox(height: getUniqueH(9.0)),
          MyTextWidget(label, size: 13.0)
        ],
      );

  BorderRadius _buildRadius(double radius) => BorderRadius.circular(
        getUniqueW(radius),
      );
  final String _lorem =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""";
}
