import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/screen/sininscreen.dart';
import '../widget/button.dart';
import '../widget/textformfield.dart';
import 'homepage.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  // bool ispasswordshow = true;

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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'مرحبا بك في تطبيق اكاكوس!',
                      style: TextStyle(
                        fontSize: 18,
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
                   
                    const TextFormFieldd(),
                    
                    const SizedBox(
                      height: 20.0,
                    ),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const HomePage()),
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
                       if (formkey.currentState!.validate()) {
                         Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const HomePage()),
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
