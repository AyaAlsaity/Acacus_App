
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';
import '../widget/textformfield.dart';
import 'homepage.dart';
import 'loginscreen.dart';

class SinInScreen extends StatefulWidget {
  const SinInScreen({super.key});

  @override
  State<SinInScreen> createState() => _SinInScreenState();
}

class _SinInScreenState extends State<SinInScreen> {
  // var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool ispasswordshow = true;

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
                  Image.asset('images/photo4.jpg'),
                   Padding(
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
                      height: 10.0,
                    ),
                    const Text(
                      'تأكيد كلمة المرور',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: ispasswordshow,
                     validator: (value) {
                        if(value!.isEmpty){
                          return 'حقل مطلوب';
                        }
                         return null;
                      },
                      decoration: InputDecoration(
                        labelText: '********',
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispasswordshow = !ispasswordshow;
                            });
                          },
                          icon: Icon(
                            ispasswordshow
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
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