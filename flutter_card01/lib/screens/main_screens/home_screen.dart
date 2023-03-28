import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  List<DataModule> data = [
    DataModule(
      title: 'آثار المدينة القديمة',
      dectitle:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
      image:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
    DataModule(
        title: 'آثار المدينة القديمة',
        dectitle:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
        image:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
    DataModule(
      title: 'آثار المدينة القديمة',
      dectitle:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
      image:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       actions: [
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
       ],
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
