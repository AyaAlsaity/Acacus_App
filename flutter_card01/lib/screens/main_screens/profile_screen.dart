import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../helpers/colors.dart';
import '../../widget/clickable_widgets/button.dart';
import '../sub_screens/edit_personal_info.dart';
import '../sub_screens/sign_in_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<LogInScreen> signOut() async {
    await FirebaseAuth.instance.signOut();

    return const LogInScreen();
  }
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      AppLocalizations.of(context)!.account1,
      AppLocalizations.of(context)!.account2,
      AppLocalizations.of(context)!.account3,
      AppLocalizations.of(context)!.account4
    ];
    List<IconData> icon = [
      Icons.edit_calendar_outlined,
      Icons.settings_outlined,
      Icons.chat_outlined,
      Icons.help_outline,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: 220,
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(120),
                            color: secondaryColor02.withOpacity(0.1),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: secondaryColor02.withOpacity(0.1),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'http://3.bp.blogspot.com/-jEBvHvt4UXc/Vh09tEWFoRI/AAAAAAAAAiE/yWj75pVkzkc/s400/Ha-Nui-Lee%20MBW.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: secondaryColor02.withOpacity(0.1),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: secondaryColor02.withOpacity(0.7),
                          ),
                          child: const Icon(
                            Icons.edit_calendar_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              AppLocalizations.of(context)!.reviews1,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'example@mail.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 330,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: title.length,
                  itemBuilder: ((context, index) => InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const EditPersonalInfo()),
                    );
                    },
                    child: Subcard(
                          icon: icon[index],
                          title: title[index],
                        ),
                  ))),
            ),
         
            GestureDetector(
              onTap: () {
                signOut();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ButtonSignOutScreen(
                  isbackround: true,
                  title: AppLocalizations.of(context)!.account5,
                  widthh: 560,
                  heightt: 50,
                  paddingg: 12,
                ),
              ),
            ),
               const SizedBox(
            height: 10,
          ),
          ],
        ),
      ),
    );
  }
}

class Subcard extends StatelessWidget {
  final String title;
  final IconData icon;
  const Subcard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_back_ios_new_rounded),
            ],
          ),
        )
        ,Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            height: 1.5,
            color: mainColorText.withOpacity(0.3),
          ),
        )
      ],
    );
  }
}
