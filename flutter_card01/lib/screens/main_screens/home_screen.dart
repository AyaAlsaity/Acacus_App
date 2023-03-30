import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/colors.dart';
import '../../module/data_module.dart';
import '../../widget/static_widgets/card.dart';
import '../sub_screens/search_screen.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
 
  @override
  Widget build(BuildContext context) {
     List<DataModule> data = [
      DataModule(
        title: AppLocalizations.of(context)!.card1,
        dectitle: AppLocalizations.of(context)!.card2,
        image:
            'https://i0.wp.com/rwayalkwn.com/app/uploads/2022/09/%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%B4%D8%AD%D8%A7%D8%AA-%D8%A3%D9%88-%D9%82%D9%88%D8%B1%D9%8A%D9%86%D8%A7-%D8%A7%D9%84%D8%A3%D8%AB%D8%B1%D9%8A%D8%A9.jpg?resize=1110%2C624&ssl=1',
      ),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image:
              'https://www.alaraby.co.uk/sites/default/files/media/images/8F8F8AEB-8D0E-4F59-9477-ADD4F65985B0.jpg'),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image:
              'http://www.libya-al-mostakbal.org/upload/article/6246a8767e17bshahat-png.png'),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image:
              'https://www.almrsal.com/wp-content/uploads/2021/12/IMG_%D9%A2%D9%A0%D9%A2%D9%A1%D9%A1%D9%A2%D9%A1%D9%A2_%D9%A0%D9%A5%D9%A2%D9%A2%D9%A3%D9%A3.jpg'),
      DataModule(
        title: AppLocalizations.of(context)!.card1,
        dectitle: AppLocalizations.of(context)!.card2,
        image:
            'https://al-rahhala.com/wp-content/uploads/2020/09/%D8%B9%D8%A7%D8%B5%D9%85%D8%A9-%D9%84%D9%8A%D8%A8%D9%8A%D8%A7.jpg',
      ),
      DataModule(
        title: AppLocalizations.of(context)!.card1,
        dectitle: AppLocalizations.of(context)!.card2,
        image:
            'https://admin.topsarabia.com/rankimg/3663a9a2-8857-4670-bd85-a5e3395754cf.jpg',
      ),
    ];
   
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       leading:
       Padding(
         padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
         child: InkWell(
           child: Image.asset(
                    'assets/icons/back.png',
                    width: size.width / 10,
                    height: size.width / 10,
                    fit: BoxFit.contain,),
                    onTap: () {
                        Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const SearchScreen()),
                            );
                    },
         ),
       ),
       
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,vertical: 10
              ),
              child: Divider(
                height: 1.5,
                color: mainColorText01.withOpacity(0.3),
              ),
            ),
           
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 600,
                child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CardScreen(
                    title: data[index].title.toString(),
                    dectitle: data[index].dectitle.toString(),
                    image: data[index].image.toString(),
                  );
                }),
              ),
            ),
          ],
        ),
      )
    );
  }
}
