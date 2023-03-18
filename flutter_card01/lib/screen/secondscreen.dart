import 'package:flutter/cupertino.dart';
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
            
            titleWidget:Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                      'اكاكوس',
                      style: GoogleFonts.gulzar(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: mainColor,
                      ),
                    ),
            ),
            bodyWidget:Column(
              children: [
                Center(
                  child: Image.asset('images/photo1.png',height: 250, ),
                ),
                Text(
'اكتشف جمال بلادنا الحبيبة ليبيا 🇱🇾',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: mainColorText,
                    ),
                  ),
              ],
            ),
           
          ),
           PageViewModel(
            titleWidget:Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                      'اكاكوس',
                      style: GoogleFonts.gulzar(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: mainColor,
                      ),
                    ),
            ),
            bodyWidget:Stack(
             alignment : AlignmentDirectional.bottomCenter,
              children: [
                Center(
                  child: Image.asset('images/photo2.png', height: 280,),
                ),
                
                 Text(
                    'احجز رحلات للمعالم المختلفة 🗿',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: mainColorText,
                    ),
                  ),
              ],
            ),
           
          ),
           PageViewModel(
            titleWidget:Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                      'اكاكوس',
                      style: GoogleFonts.gulzar(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: mainColor,
                      ),
                    ),
            ),
            bodyWidget:Column(
              // mainAxisSize :MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset('images/photo3.png',height: 168, ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 Text(
                    'ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه 🍔',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: mainColorText,
                    ),
                  ),
              ],
            ),
           
          ),
       
       
       
       
      ],
      skip: GestureDetector(
         onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) =>  const LogInScreen()),
        ),
        child: const ButtonScreen(
          isbackround: false,
          title: 'تخطي',
          widthh: 120,
          heightt: 40,
          paddingg: 5.5,
        ),
      ),
      next: GestureDetector(
        child: const ButtonScreen(
          isbackround: true,
          title: 'التالي',
          widthh: 120,
          heightt: 40,
          paddingg: 5.5,
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
          heightt: 40,
          paddingg: 5.5,
        ),
      ),
      onDone: () {},
      showSkipButton: true,
      showDoneButton: true,
      showNextButton: true,
    );
  }
}
