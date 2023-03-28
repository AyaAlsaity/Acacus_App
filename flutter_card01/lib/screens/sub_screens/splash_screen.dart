import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../helpers/colors.dart';
import '../../main.dart';
import '../../widget/splash_widgets/info_splash_screen.dart';
import 'sign_in_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    List<Widget> listPagesViewModel = [
      InfoSplash(
          image: 'assets/images/photo1.png',
          title: AppLocalizations.of(context)!.ione),
      InfoSplash(
          image: 'assets/images/photo2.png',
          title: AppLocalizations.of(context)!.itwo),
      InfoSplash(
          image: 'assets/images/photo3.png',
          title: AppLocalizations.of(context)!.ithree),
    ];

    return Scaffold(
      
      //  floatingActionButton: FloatingActionButton(
      //     child: Text(AppLocalizations.of(context)!.localeName),
      //     onPressed: () {
      //       AppLocalizations.of(context)!.localeName == 'ar'
      //           ? MyApp.setLocale(context, const Locale('en'))
      //           : MyApp.setLocale(context, const Locale('ar'));
      //     }),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                   IconButton(

                        onPressed: () {
                          AppLocalizations.of(context)!.localeName == 'ar'
                              ? MyApp.setLocale(context, const Locale('en'))
                              : MyApp.setLocale(context, const Locale('ar'));
                        },
                        icon:const Icon(Icons.language),
                      ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IntroductionScreen(
              rawPages: listPagesViewModel,
              done: Container(
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Text(
                    AppLocalizations.of(context)!.enter,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              next: Container(
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Text(
                    AppLocalizations.of(context)!.next,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              skip: Text(
                AppLocalizations.of(context)!.skip,
                style: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
              ),
              showSkipButton: true,
              dotsDecorator: DotsDecorator(
                  size: const Size.square(6.0),
                  activeSize: const Size(30.0, 6.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: mainColor.withOpacity(0.5),
                  activeColor: mainColor),
              onSkip: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogInScreen()));
              },
              onDone: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogInScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// import '../../helpers/colors.dart';
// import '../../module/auth_screen.dart';
// import '../../widget/static_widgets/button.dart';


// class SecondScreen extends StatefulWidget {
//   const SecondScreen({super.key});

//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   final _introKey = GlobalKey<IntroductionScreenState>();
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       key: _introKey,
//       pages: [
//           PageViewModel(
            
//             titleWidget:Padding(
//               padding: const EdgeInsets.only(top: 10),
              // child: Text(
              //         'اكاكوس',
              //         style: GoogleFonts.gulzar(
              //           fontSize: 50,
              //           fontWeight: FontWeight.w400,
              //           fontStyle: FontStyle.italic,
              //           color: mainColor,
              //         ),
              //       ),
//             ),
//             bodyWidget:Column(
//               children: [
//                 Center(
//                   child: Image.asset('images/photo1.png',height: 250, ),
//                 ),
//                 Text(
// 'اكتشف جمال بلادنا الحبيبة ليبيا 🇱🇾',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: mainColorText,
//                     ),
//                   ),
//               ],
//             ),
           
//           ),
//            PageViewModel(
//             titleWidget:Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Text(
//                       'اكاكوس',
//                       style: GoogleFonts.gulzar(
//                         fontSize: 50,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.italic,
//                         color: mainColor,
//                       ),
//                     ),
//             ),
//             bodyWidget:Stack(
//              alignment : AlignmentDirectional.bottomCenter,
//               children: [
//                 Center(
//                   child: Image.asset('images/photo2.png', height: 280,),
//                 ),
                
//                  Text(
//                     'احجز رحلات للمعالم المختلفة 🗿',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: mainColorText,
//                     ),
//                   ),
//               ],
//             ),
           
//           ),
//            PageViewModel(
//             titleWidget:Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Text(
//                       'اكاكوس',
//                       style: GoogleFonts.gulzar(
//                         fontSize: 50,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.italic,
//                         color: mainColor,
//                       ),
//                     ),
//             ),
//             bodyWidget:Column(
//               // mainAxisSize :MainAxisSize.min,
//               children: [
//                 Center(
//                   child: Image.asset('images/photo3.png',height: 168, ),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                  Text(
//                     'ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه 🍔',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w400,
//                       color: mainColorText,
//                     ),
//                   ),
//               ],
//             ),
           
//           ),
       
       
       
       
//       ],
//       skip: GestureDetector(
//          onTap: () => Navigator.pushReplacement(
//           context,
//           CupertinoPageRoute(builder: (context) =>  const AuthScreen()),
//         ),
//         child: const ButtonScreen(
//           isbackround: false,
//           title: 'تخطي',
//           widthh: 120,
//           heightt: 40,
//           paddingg: 5.5,
//         ),
//       ),
//       next: GestureDetector(
//         child: const ButtonScreen(
//           isbackround: true,
//           title: 'التالي',
//           widthh: 120,
//           heightt: 40,
//           paddingg: 5.5,
//         ),
//       ),
//       done: GestureDetector(
//         onTap: () => Navigator.pushReplacement(
//           context,
//           CupertinoPageRoute(builder: (context) => const AuthScreen()),
//         ),
//         child: const ButtonScreen(
//           isbackround: true,
//           title: 'دخول',
//           widthh: 120,
//           heightt: 40,
//           paddingg: 5.5,
//         ),
//       ),
//       onDone: () {},
//       showSkipButton: true,
//       showDoneButton: true,
//       showNextButton: true,
//     );
//   }
// }
