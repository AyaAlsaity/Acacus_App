

import 'package:flutter/material.dart';

import '../../helpers/colors.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      this.label,
      required this.validator,
      required this.hintText,
      this.obSecureText = false,
      this.readOnlyy=false,
      this.perfix, required this.ispassword, required this.keyboardType});
  final TextEditingController controller;
  final String? label;
  final String hintText;
  final FormFieldValidator<String?> validator;
  final bool ispassword ;
  final TextInputType keyboardType;

  final bool obSecureText;
  final bool readOnlyy;
  final Widget? perfix;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool ispasswordshow = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            if (widget.label != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.label ?? "",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            const SizedBox(
              height: 5,
            ),
            
            TextFormField(
                controller: widget.controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                obscureText: widget.ispassword? ispasswordshow:widget.obSecureText,
                keyboardType:widget.keyboardType,
                readOnly :widget.readOnlyy,

                decoration: InputDecoration(
              
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 16),
                  suffixIcon:widget.ispassword? IconButton(
                onPressed: () {
                  setState(() {
                    ispasswordshow = !ispasswordshow;
                  });
                },
                icon: Icon(
                  // ignore: dead_code
                  ispasswordshow ? Icons.visibility : Icons.visibility_off,
                ),
              ):widget.perfix,
                  fillColor: mainColor.withOpacity(0.2),
                  filled: true,
                  hintText: widget.hintText,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.2))),
                  focusColor: mainColor.withOpacity(0.2),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.2))),
                ))
          ],
        ),
      ),
    );
  }
}

// class TextFormFieldd extends StatefulWidget {
//   const TextFormFieldd(
//       {super.key,
//       required this.emailController,
//       required this.passwordController});
//   final TextEditingController emailController;
//   final TextEditingController passwordController;
//   @override
//   State<TextFormFieldd> createState() => _TextFormFielddState();
// }

// class _TextFormFielddState extends State<TextFormFieldd> {
//   //   var emailController = TextEditingController();
//   // var passwordController = TextEditingController();
//   bool ispasswordshow = true;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         const Text(
//           'البريد الالكتروني',
//           textAlign: TextAlign.end,
//           style: TextStyle(
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         Directionality(
//           textDirection: TextDirection.rtl,
//           child: TextFormField(
//             controller: widget.emailController,
//             keyboardType: TextInputType.emailAddress,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'حقل مطلوب';
//               }
//               return null;
//             },
//             decoration: const InputDecoration(
//               labelText: 'email@gmail.com',
//               // prefixIcon: Icon(Icons.email),
//               border: OutlineInputBorder(),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10.0,
//         ),
//         const Text(
//           'كلمة المرور',
//           textAlign: TextAlign.end,
//           style: TextStyle(
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(
//           height: 5.0,
//         ),
//         Directionality(
//           textDirection: TextDirection.rtl,
//           child: TextFormField(
//             controller: widget.passwordController,
//             keyboardType: TextInputType.visiblePassword,
//             obscureText: ispasswordshow,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'حقل مطلوب';
//               }
//               return null;
//             },
//             decoration: InputDecoration(
//               labelText: '********',
//               // prefixIcon: const Icon(
//               //   Icons.lock,
//               // ),
//               suffixIcon: IconButton(
//                 onPressed: () {
//                   setState(() {
//                     ispasswordshow = !ispasswordshow;
//                   });
//                 },
//                 icon: Icon(
//                   ispasswordshow ? Icons.visibility : Icons.visibility_off,
//                 ),
//               ),
//               border: const OutlineInputBorder(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
