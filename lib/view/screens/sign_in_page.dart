import 'package:flower_guide/core/constants/colors.dart';
import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/view/screens/account_page.dart';
import 'package:flower_guide/view/screens/sign_up_page.dart';
import 'package:flower_guide/view/widgets/text_fields/my_auth_text_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController _phoneController =
      TextEditingController(text: '+998');
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late bool isVisible;

  @override
  Widget build(BuildContext context) {
    isVisible = Provider.of<TextFieldProvider>(context).isVisible;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(
            getUniqueW(24.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOGO SECTION
              SvgPicture.asset(
                MyIcons.logoFill,
                width: getUniqueW(50.0),
              ),
              Text(
                'Gulland',
                style: TextStyle(
                    fontSize: getUniqueW(48.0),
                    color: MyColors.primary,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: getUniqueH(32.0)),

              // LOG IN WITH GOOGLE
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(getUniqueW(20))),
                    primary: MyColors.accent,
                    fixedSize: Size(SizeConfig.screenWidth, getUniqueH(40))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(MyIcons.google, color: MyColors.primary),
                    SizedBox(width: getUniqueW(8.0)),
                    Text(
                      "Google orqali kirish",
                      style: TextStyle(
                          fontSize: getUniqueW(16.0), color: MyColors.dark),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getUniqueH(16.0)),

              // PHONE SECTION
              MyAuthTextField(
                controller: _phoneController,
                hintText: "Telefon raqam",
                labelText: 'Telefon raqam',
                keyboardType: TextInputType.phone,

                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
              SizedBox(height: getUniqueH(16.0)),

              // PASSWORD SECTION
              MyAuthTextField(
                controller: _passwordController,
                hintText: "Parolingizni kiriting",
                labelText: 'Parol',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  onPressed: () {
                    isVisible = !isVisible;
                    context.read<TextFieldProvider>().changeVisible(isVisible);
                  },
                  icon: context.watch<TextFieldProvider>().eye,
                ),
                validator: (value) {
                  if (value!.isEmpty) "wwwww";
                },
              ),
              SizedBox(height: getUniqueH(4.0)),

              // FORGOT PASSWORD SECTION
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Parolni unutdingizmi?",
                      style: TextStyle(
                          color: MyColors.primary, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getUniqueH(4.0)),

              // LOG IN SECTION
              ElevatedButton(
                  onPressed: () {
                    // push and remove until qilishim kk
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountPage()),
                    );
                  },
                  child: Text("Kirish",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: getUniqueW(16.0))),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(getUniqueW(20))),
                      primary: MyColors.primary,
                      fixedSize: Size(SizeConfig.screenWidth, getUniqueH(40)))),
              SizedBox(height: getUniqueH(32.0)),

              // SIGN UP SECTION
              const Text("Hali ro'yxatdan o'tmaganmisiz?"),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: const Text(
                  "Ro'yxatdan o'tish",
                  style: TextStyle(
                      color: MyColors.primary, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}