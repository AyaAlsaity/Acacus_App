import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../module/data_module.dart';
import '../../widget/static_widgets/card.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(
            Icons.logout,
            color: Colors.red,
          ),
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        ),
        title: const Text('Aya Alsaity'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return CardScreen(
                title: data[index].title.toString(),
                dectitle: data[index].dectitle.toString(),
                image: data[index].image.toString(),
              );
            }),
      ),
    );
  }
}
