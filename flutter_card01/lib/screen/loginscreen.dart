import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/helpers/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button.dart';
import 'homepage.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('images/photo5.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'مرحبا بك في تطبيق اكاكوس!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'البريد الالكتروني',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'كلمة المرور',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '*********',
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (() {}),
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
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomePage()),
                    ),
                    child: const ButtonScreen(
                      isbackround: true,
                      title: 'تسجيل دخول',
                      widthh: 560,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    //                       onTap: () => Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(builder: (context) => const HomePage()),
                    // ),

                    child: const ButtonScreen(
                      isbackround: false,
                      title: 'انشاء حساب',
                      widthh: 560,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
