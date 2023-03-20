import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card01/helpers/colors.dart';

import '../../module/data_module.dart';
import '../../widget/static_widgets/card.dart';
import '../../widget/static_widgets/min_card.dart';
import '../../widget/static_widgets/search_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  List<DataModule> data = [
    DataModule(
      title: 'آثار المدينة القديمة',
      dectitle:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
      image:
          'https://i0.wp.com/rwayalkwn.com/app/uploads/2022/09/%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%B4%D8%AD%D8%A7%D8%AA-%D8%A3%D9%88-%D9%82%D9%88%D8%B1%D9%8A%D9%86%D8%A7-%D8%A7%D9%84%D8%A3%D8%AB%D8%B1%D9%8A%D8%A9.jpg?resize=1110%2C624&ssl=1',
    ),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'https://www.alaraby.co.uk/sites/default/files/media/images/8F8F8AEB-8D0E-4F59-9477-ADD4F65985B0.jpg'),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'http://www.libya-al-mostakbal.org/upload/article/6246a8767e17bshahat-png.png'),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'https://www.almrsal.com/wp-content/uploads/2021/12/IMG_%D9%A2%D9%A0%D9%A2%D9%A1%D9%A1%D9%A2%D9%A1%D9%A2_%D9%A0%D9%A5%D9%A2%D9%A2%D9%A3%D9%A3.jpg'),
    DataModule(
      title: 'آثار المدينة القديمة',
      dectitle:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
      image:
          'https://al-rahhala.com/wp-content/uploads/2020/09/%D8%B9%D8%A7%D8%B5%D9%85%D8%A9-%D9%84%D9%8A%D8%A8%D9%8A%D8%A7.jpg',
    ),
     DataModule(
      title: 'آثار المدينة القديمة',
      dectitle:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
      image:
          'https://admin.topsarabia.com/rankimg/3663a9a2-8857-4670-bd85-a5e3395754cf.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                         decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(113, 255, 255, 255),
        border: Border.all(color: secondaryColor02, width: 1),
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
        border: Border.all(color: secondaryColor02, width: 1),
      ),
                        child: Icon(
                          Icons.heart_broken,
                          color: secondaryColor02,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'مرحبا بيك آية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'استكشف معالم ليبيا بضغطة زر',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchScreen(),
              const SizedBox(
                height: 20,
              ),
              Divider(
                height: 1.5,
                color: mainColorText01.withOpacity(0.3),
              ),
              const SizedBox(
                height: 35,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'بالقرب مني',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return MinCard(
                        title: data[index].title.toString(),
                        image: data[index].image.toString(),
                      );
                    }),
              ),
              const SizedBox(
                height: 35,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'الاكثر شهرة',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 480,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return CardScreen(
                        title: data[index].title.toString(),
                        dectitle: data[index].dectitle.toString(),
                        image: data[index].image.toString(),
                      );
                    }),
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'تصفح حسب المدن',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 550,
                  child: GridView.builder(
                    physics:const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        alignment :AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                             decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(40),
                            image: DecorationImage(
                                image: NetworkImage(data[index].image.toString()),
                                fit: BoxFit.fill  )),
                      
                          ),
                          
                          Text(
                            data[index].title.toString(),
                            style: TextStyle(color: secondaryColorText,fontWeight: FontWeight.w900),
                          )
                        ],
                      );
                    },
                  )),
                  const SizedBox(
                    height: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
          child: const Icon(
            Icons.logout,
            color: Colors.red,
          ),
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        ),
                    ],
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
