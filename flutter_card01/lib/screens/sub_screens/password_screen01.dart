import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/screens/sub_screens/password_screen02.dart';
import 'package:flutter_card01/screens/sub_screens/sign_in_screen.dart';

import '../../widget/static_widgets/button.dart';

class PasswordScreen01 extends StatefulWidget {
  const PasswordScreen01({super.key});

  @override
  State<PasswordScreen01> createState() => _PasswordScreen01State();
}

class _PasswordScreen01State extends State<PasswordScreen01> {
  TextEditingController emailController = TextEditingController();
  var formkey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: formkey1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          child: Column(
            // crossAxisAlignment : CrossAxisAlignment.end,
            children: [
              Column(
                children: const [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      'اعادة تعيين كلمة السر',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      textAlign: TextAlign.center,
                      'قم بادخال البريد الالكتروني لاستلام رمز التأكيد',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      'البريد الالكتروني',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'حقل مطلوب';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        
                        labelText: 'email@gmail.com',
                        // prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 160,
              ),
              GestureDetector(
                onTap: () {
                  //  signIn();
                  if (formkey1.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>  PasswordScreen02(email: emailController,)),
                    );
                  }
                },
                child: const ButtonScreen(
                  isbackround: true,
                  title: 'متابعة',
                  widthh: 560,
                  heightt: 50,
                  paddingg: 13,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                 
                 
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const LogInScreen()),
                    );
                 
                },
                child: const ButtonScreen(
                  isbackround: false,
                  title: 'رجوع',
                  widthh: 560,
                  heightt: 50,
                  paddingg: 13,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
