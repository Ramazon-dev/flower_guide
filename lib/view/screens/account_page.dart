import 'package:flower_guide/core/constants/colors.dart';
import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/view/screens/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getUniqueW(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foydalanuvchi ma'lumotlari",
                    style: TextStyle(
                        fontSize: getUniqueW(20), fontWeight: FontWeight.w600),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
                ],
              ),
              SizedBox(height: getUniqueH(16)),
              Card(
                color: MyColors.accent,
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text('User Name'),
                  trailing:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                ),
              ),
              SizedBox(height: getUniqueH(16)),
              const Card(
                color: MyColors.accent,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+998 99 999 88 77'),
                ),
              ),
              SizedBox(height: getUniqueH(16)),
              const Card(
                color: MyColors.accent,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('example@gmail.com'),
                ),
              ),
              SizedBox(height: getUniqueH(16)),
              Card(
                color: MyColors.accent,
                child: ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text("Parolni o'zgartirish"),
                  trailing:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget notAuthMethod(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Ilovadan to'laqonli foydalanish uchun avval tizimda ro'yxatdan o'ting!",
          style: TextStyle(
            fontSize: getUniqueW(24),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getUniqueH(16)),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: Text(
            "Ro'yxatdan o'tish",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: getUniqueW(16.0)),
          ),
          style: ElevatedButton.styleFrom(
              primary: MyColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getUniqueW(20)))),
        ),
      ],
    );
  }
}
