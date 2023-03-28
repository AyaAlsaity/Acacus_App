import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../module/auth_screen.dart';
import '../../widget/clickable_widgets/button.dart';
import '../../widget/input_widgets/textformfield.dart';

import 'password_screen01.dart';
import 'sign_up_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();
  bool enableLoginBtn = false;
 
    Future signIn()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
   }
   
    @override
    void dispose(){
      super.dispose();
      emailController.dispose();
      passwordController.dispose();
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
                  Image.asset('assets/images/photo5.jpg'),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [

                        Text(
                          AppLocalizations.of(context)!.loginhi,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                         IconButton(

                        onPressed: () {
                          AppLocalizations.of(context)!.localeName == 'ar'
                              ? MyApp.setLocale(context, const Locale('en'))
                              : MyApp.setLocale(context, const Locale('ar'));
                        },
                        icon:const Icon(Icons.language),
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
                   
                    //  TextFieldWidget(emailController: emailController,passwordController: passwordController,),
                    
                    const SizedBox(
                      height: 15.0,
                    ),
        
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const PasswordScreen01()),
                            );
                          }),
                          child:  Text(
                            AppLocalizations.of(context)!.forgot2,
                            // textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                         Text(
                          AppLocalizations.of(context)!.forgot1,
                          // textAlign: TextAlign.end,
                          style:const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(
                      height: 10,
                    ),
        
                   
                    GestureDetector(
                      onTap: () {
                      //  signIn();
                       if (formkey.currentState!.validate()) {
                         signIn();
                        
                         Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const AuthScreen()),
                        );
                       }
                          
                      },
                      child:  ButtonScreen(
                        isbackround: true,
                        title: AppLocalizations.of(context)!.butt0,
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
                              builder: (context) => const SinInScreen()),
                        );
                        
                       
                      },
                      child:  ButtonScreen(
                        isbackround: false,
                        title: AppLocalizations.of(context)!.butt1,
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
