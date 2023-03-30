import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/colors.dart';
import '../../widget/clickable_widgets/button.dart';
import 'password_screen01.dart';
import 'sign_in_screen.dart';

class PasswordScreen02 extends StatefulWidget {
  const PasswordScreen02({
    Key? key,
    required this.email,
  }) : super(key: key);
  final TextEditingController email;

  @override
  State<PasswordScreen02> createState() => _PasswordScreen02State();
}

class _PasswordScreen02State extends State<PasswordScreen02> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  // ignore: override_on_non_overriding_member
  var formkey2 = GlobalKey<FormState>();
  FocusNode focusNode1 = FocusNode();

  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: formkey2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          child: Column(
            // crossAxisAlignment : CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                   Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      AppLocalizations.of(context)!.pass7,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                   Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      textAlign: TextAlign.center,
                      AppLocalizations.of(context)!.pass5,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      widget.email.text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              PinCodeFields(
                length: 6,
                fieldBorderStyle: FieldBorderStyle.square,
                responsive: false,
                fieldHeight: 40.0,
                fieldWidth: 40.0,
                borderWidth: 1.0,
                fieldBackgroundColor:secondaryColor,
                borderColor: secondaryColor,
                activeBorderColor: mainColor,
                activeBackgroundColor: mainColor,
                borderRadius: BorderRadius.circular(10.0),
                keyboardType: TextInputType.number,
                autoHideKeyboard: false,
                margin : const EdgeInsets.all(1.0),
                padding : const EdgeInsets.all( 5.0),
                
                
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
                onComplete: (output) {},
              ),
              const SizedBox(
                height: 160,
              ),
              GestureDetector(
                onTap: () {
                 
                  if (formkey2.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const LogInScreen()),
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
                          builder: (context) => const PasswordScreen01()),
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
