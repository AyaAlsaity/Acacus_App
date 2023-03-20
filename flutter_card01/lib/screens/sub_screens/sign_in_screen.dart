import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/screens/sub_screens/sign_up_screen.dart';
import '../../module/auth_screen.dart';
import '../../widget/static_widgets/button.dart';
import '../../widget/input_widgets/textformfield.dart';

import 'password_screen01.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();
 
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image.asset('images/photo5.jpg'),
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'مرحبا بك في تطبيق اكاكوس!',
                        style: TextStyle(
                          fontSize: 18,
                        ),
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
                   
                     TextFormFieldd(emailController: emailController,passwordController: passwordController,),
                    
                    const SizedBox(
                      height: 15.0,
                    ),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const PasswordScreen01()),
                            );
                          }),
                          child: const Text(
                            'اعادة تعيين',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Text(
                          'نسيت كلمة المرور؟',
                          textAlign: TextAlign.end,
                          style: TextStyle(
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
                      child: const ButtonScreen(
                        isbackround: true,
                        title: 'تسجيل دخول',
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
                      child: const ButtonScreen(
                        isbackround: false,
                        title: 'ليس لديك حساب؟ سجل الآن',
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
