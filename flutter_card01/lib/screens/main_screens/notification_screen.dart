import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/colors.dart';
import '../../main.dart';
import '../../module/data_module.dart';
import '../../widget/static_widgets/card_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<DataModule> data = [
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image: ''),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image: ''),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image: ''),
      DataModule(
          title: AppLocalizations.of(context)!.card1,
          dectitle: AppLocalizations.of(context)!.card2,
          image: ''),
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
                          AppLocalizations.of(context)!.notification1,
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
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.notification2,
                  style:const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          
          SizedBox(
            width: double.infinity,
            height: 260,
            child: ListView.builder(
             physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return CardNotification(
                  title: data[index].title,
                  dectitle: data[index].dectitle,
                );
              },
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.notification3,
                  style:const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          
          SizedBox(
            width: double.infinity,
            height: 280,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount:2,
              itemBuilder: (context, index) {
                return CardNotification(
                  title: data[index].title,
                  dectitle: data[index].dectitle,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
