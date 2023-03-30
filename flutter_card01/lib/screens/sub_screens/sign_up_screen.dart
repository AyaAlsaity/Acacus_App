import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../module/auth_screen.dart';
import '../../widget/clickable_widgets/button.dart';
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
          
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image.asset('assets/images/photo4.jpg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      
                      children:  [
                        Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.loginhi,
                              style:const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              
                             AppLocalizations.of(context)!.signup1,
                              style:const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
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
                      label: AppLocalizations.of(context)!.email1,
                      controller: emailController,
                      keyboardType:TextInputType.emailAddress,
                      hintText: AppLocalizations.of(context)!.email2,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return AppLocalizations.of(context)!.email3;
                        }
                        if (!value.contains('@') || !value.contains('.com')) {
                          return AppLocalizations.of(context)!.email4;
                        }
                        return null;
                      },ispassword: false,
                    ),
                    TextFieldWidget(
                      label: AppLocalizations.of(context)!.pass1,
                      hintText: AppLocalizations.of(context)!.pass2,
                      controller: passwordController,
                      keyboardType:TextInputType.visiblePassword,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return AppLocalizations.of(context)!.pass3;
                        }
                        if (value.length < 8) {
                          return AppLocalizations.of(context)!.pass4;
                        }
                        return null;
                      }, ispassword: true,
                          
                    ),
                   
                    TextFieldWidget(
                      label: AppLocalizations.of(context)!.pass1,
                      hintText: AppLocalizations.of(context)!.pass2,
                      controller: passwordController,
                      keyboardType:TextInputType.visiblePassword,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return AppLocalizations.of(context)!.pass3;
                        }
                        if (value.length < 8) {
                          return AppLocalizations.of(context)!.pass4;
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
                      child:  ButtonScreen(
                        isbackround: true,
                        title:AppLocalizations.of(context)!.butt5,
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
                      child:  ButtonScreen(
                        isbackround: false,
                        title: AppLocalizations.of(context)!.butt0,
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
