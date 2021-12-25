import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class MySearchTextField extends StatelessWidget {
  
  const MySearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextField(
      controller: context.watch<TextFieldProvider>().textController,
      onChanged: (value){
        Provider.of<TextFieldProvider>(context, listen: false).value = value;
        context.read<TextFieldProvider>().changValue(value);
      },
      style: TextStyle(color: MyColors.text, fontSize: getUniqueW(16)),
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          MyIcons.search,
          height: getUniqueW(24),
          fit: BoxFit.none,
        ),
        hintText: "Gul izlash",
        filled: true,
        fillColor: MyColors.accent,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.none,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(
            getUniqueW(16),
          ),
        ),
      ),
    );
  }
}
