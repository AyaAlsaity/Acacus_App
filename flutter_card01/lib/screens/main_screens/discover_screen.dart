import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/colors.dart';
import '../../module/catgr_module.dart';
import '../../module/data_module.dart';
import '../../widget/clickable_widgets/button.dart';
import '../../widget/static_widgets/card_discover.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
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
   
    List<CatgrModule> discovers = [
      CatgrModule(
          title: AppLocalizations.of(context)!.discover2, isbackround: true),
      CatgrModule(
          title: AppLocalizations.of(context)!.discover3, isbackround: false),
      CatgrModule(
          title: AppLocalizations.of(context)!.discover4, isbackround: false),
      CatgrModule(
          title: AppLocalizations.of(context)!.discover5, isbackround: false),
      CatgrModule(
          title: AppLocalizations.of(context)!.discover6, isbackround: false),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.discover1,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            AppLocalizations.of(context)!.discover01,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(113, 255, 255, 255),
                          border: Border.all(
                              color: const Color.fromARGB(40, 42, 33, 33),
                              width: 1),
                        ),
                        child: Icon(
                          Icons.star_border_outlined,
                          color: secondaryColor02,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(113, 255, 255, 255),
                          border: Border.all(
                              color: const Color.fromARGB(40, 42, 33, 33),
                              width: 1),
                        ),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: secondaryColor02,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: mainColorText01.withOpacity(0.1),
            ),
            SizedBox(
              width: double.infinity,
              height: 65,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: discovers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top:25),
                      child: ButtonScreen(
                        isbackround: discovers[index].isbackround,
                        title: discovers[index].title,
                        widthh: 100,
                        heightt: 50,
                        paddingg: 7,
                      ),
                    ),
                  );
                },
              ),
            ),
            //////
            SizedBox(
              width: double.infinity,
              height: 500,
              child: ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CardDiscover(
                    image: data[index].image,
                    title: data[index].title,
                    dectitle: data[index].dectitle,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
