import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../helpers/colors.dart';
import '../widget/button.dart';

import 'loginscreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      pages: [
        PageViewModel(
            title: '',
            bodyWidget: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 20, top: 5),
              child: Column(
                children: [
                  Text(
                    'اكاكوس',
                    style: GoogleFonts.gulzar(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: mainColor,
                    ),
                  ),
                  Image.asset('images/photo1.png'),
                  Text(
                    'اكتشف جمال بلادنا الحبيبة ليبيا',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.gulzar(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: mainColorText,
                    ),
                  ),
                ],
              ),
            )),
        PageViewModel(
            title: '',
            bodyWidget: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 20),
              child: Column(
                children: [
                  Text(
                    'اكاكوس',
                    style: GoogleFonts.gulzar(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: mainColor,
                    ),
                  ),
                  Image.asset(
                    'images/photo2.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'احجز رحلات للمعالم المختلفة 🗿',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.gulzar(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: mainColorText,
                    ),
                  ),
                ],
              ),
            )),
        PageViewModel(
            title: '',
            bodyWidget: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 20, top: 5),
              child: Column(
                children: [
                  Text(
                    'اكاكوس',
                    style: GoogleFonts.gulzar(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: mainColor,
                    ),
                  ),
                  Image.asset('images/photo3.png'),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه 🍔',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.gulzar(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: mainColorText,
                    ),
                  ),
                ],
              ),
            )),
      ],
      skip: GestureDetector(
         onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const LogInScreen()),
        ),
        child: const ButtonScreen(
          isbackround: false,
          title: 'تخطي',
          widthh: 120,
        ),
      ),
      next: GestureDetector(
        child: const ButtonScreen(
          isbackround: true,
          title: 'التالي',
          widthh: 120,
        ),
      ),
      done: GestureDetector(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const LogInScreen()),
        ),
        child: const ButtonScreen(
          isbackround: true,
          title: 'دخول',
          widthh: 120,
        ),
      ),
      onDone: () {},
      showSkipButton: true,
      showDoneButton: true,
      showNextButton: true,
    );
  }
}
