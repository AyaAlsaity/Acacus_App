import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../module/auth_screen.dart';
import '../../widget/static_widgets/button.dart';
import '../../widget/input_widgets/textformfield.dart';
import 'sign_in_screen.dart';

class SinInScreen extends StatefulWidget {
  const SinInScreen({super.key});

  @override
  State<SinInScreen> createState() => _SinInScreenState();
}

class _SinInScreenState extends State<SinInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
   bool ispasswordshow = true;
  bool enableLoginBtn = false;


  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());

      // ignore: use_build_context_synchronously
      // Navigator.of(context).pushNamed('/');
    }
  }

  bool passwordConfirmed() {
    if (passwordController.text.trim() == passwordController2.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          onChanged: () {
                  setState(() {
                    enableLoginBtn = formkey.currentState!.validate();
                  });
                },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image.asset('images/photo4.jpg'),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'مرحبا بك في تطبيق اكاكوس!',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'قم بانشاء حساب للاستفادة من مزايا التطبيق',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   
                     TextFieldWidget(
                      label: 'البريد الإلكتروني',
                      controller: emailController,
                      keyboardType:TextInputType.emailAddress,
                      hintText: 'أدخل البريد الالكتروني',
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "الرجاء ادخال البريد الالكتروني";
                        }
                        if (!value.contains('@') || !value.contains('.com')) {
                          return "الرجاء ادخال البريد الالكتروني بشكل صحيح";
                        }
                        return null;
                      },ispassword: false,
                    ),
                    TextFieldWidget(
                      label: 'كلمة المرور',
                      hintText: 'أدخل كلمة المرور',
                      controller: passwordController,
                      keyboardType:TextInputType.visiblePassword,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "الرجاء ادخال كلمة المرور";
                        }
                        if (value.length < 8) {
                          return "كلمة المرور يجب ان تكون اكثر من 8 احرف";
                        }
                        return null;
                      }, ispassword: true,
                          
                    ),
                    TextFieldWidget(
                      label: 'كلمة المرور',
                      hintText: 'أدخل كلمة المرور',
                      controller: passwordController2,
                      keyboardType:TextInputType.visiblePassword,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "الرجاء ادخال كلمة المرور";
                        }
                        if (value.length < 8) {
                          return "كلمة المرور يجب ان تكون اكثر من 8 احرف";
                        }
                        return null;
                      }, ispassword: true,
                          
                    ),
                    
                    const SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          if (formkey.currentState!.validate()) {
                            signUp();
                            Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const AuthScreen()),
                            );
                          }
                        }
                      },
                      child: const ButtonScreen(
                        isbackround: true,
                        title: 'انشاء حساب',
                        widthh: 560,
                        heightt: 50,
                        paddingg: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const LogInScreen()),
                        );
                      },
                      child: const ButtonScreen(
                        isbackround: false,
                        title: 'تسجيل دخول',
                        widthh: 560,
                        heightt: 50,
                        paddingg: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
