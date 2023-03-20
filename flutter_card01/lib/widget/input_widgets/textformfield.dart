

import 'package:flutter/material.dart';

class TextFormFieldd extends StatefulWidget {
  const TextFormFieldd(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  State<TextFormFieldd> createState() => _TextFormFielddState();
}

class _TextFormFielddState extends State<TextFormFieldd> {
  //   var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  bool ispasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'البريد الالكتروني',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            controller: widget.emailController,
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
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'كلمة المرور',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            controller: widget.passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: ispasswordshow,
            validator: (value) {
              if (value!.isEmpty) {
                return 'حقل مطلوب';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: '********',
              // prefixIcon: const Icon(
              //   Icons.lock,
              // ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    ispasswordshow = !ispasswordshow;
                  });
                },
                icon: Icon(
                  ispasswordshow ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
