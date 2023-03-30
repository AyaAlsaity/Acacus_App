import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widget/clickable_widgets/button.dart';
import 'password_screen02.dart';
import 'sign_in_screen.dart';

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
                children:  [
                  Text(
                    AppLocalizations.of(context)!.forgot3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.pass5,
                    style:const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
           
                children: [
                   Row(
                     children: [
                       Text(
                        AppLocalizations.of(context)!.email1,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                  ),
                     ],
                   ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppLocalizations.of(context)!.pass6;
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      
                      labelText: 'email@gmail.com',
                      // prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
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
                child:  ButtonScreen(
                  isbackround: true,
                  title: AppLocalizations.of(context)!.next,
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
                child:  ButtonScreen(
                  isbackround: false,
                  title: AppLocalizations.of(context)!.butt6,
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
