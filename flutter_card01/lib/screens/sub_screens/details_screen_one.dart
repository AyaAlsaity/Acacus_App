import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../helpers/colors.dart';
import '../../module/trips_model.dart';
import '../../widget/splash_widgets/slider_image.dart';
import '../../widget/static_widgets/tab_bar_Trips.dart';
import '../../widget/static_widgets/tab_bar_information.dart';
import '../../widget/static_widgets/tab_bar_review.dart';

class DetailsScreenOne extends StatefulWidget {
  // String title;
  // String dectitle;
  // String image;

  DetailsScreenOne({
    Key? key,
    // required this.title,
    // required this.dectitle,
    // required this.image,
  }) : super(key: key);

  @override
  State<DetailsScreenOne> createState() => _DetailsScreenOneState();
}

class _DetailsScreenOneState extends State<DetailsScreenOne> {
  
  List<Widget> listPagesViewModel = [
    SliderImage(
      image:
          'https://www.alaraby.co.uk/sites/default/files/media/images/8F8F8AEB-8D0E-4F59-9477-ADD4F65985B0.jpg',
    ),
    SliderImage(
      image:
          'https://www.alaraby.co.uk/sites/default/files/media/images/8F8F8AEB-8D0E-4F59-9477-ADD4F65985B0.jpg',
    ),
    SliderImage(
      image:
          'https://www.alaraby.co.uk/sites/default/files/media/images/8F8F8AEB-8D0E-4F59-9477-ADD4F65985B0.jpg',
    ),
  ];
  int maxline = 2;
  bool isOk = false;
  bool isOk1 = false;
  @override
  Widget build(BuildContext context) {
    List<TripsModule> trips = [
      TripsModule(type:  AppLocalizations.of(context)!.trips1, price: '80'),
      
      TripsModule(type:  AppLocalizations.of(context)!.trips2, price: '120'),
      
      TripsModule(type:  AppLocalizations.of(context)!.trips3, price: '150'),
    ];
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: IntroductionScreen(
                rawPages: listPagesViewModel,
                showNextButton: false,
                showDoneButton: false,
                dotsDecorator: DotsDecorator(
                    size: const Size.square(6.0),
                    activeSize: const Size(30.0, 6.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: secondaryColor02,
                    activeColor: mainColor),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.card1,
                            // widget.title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'طرابلس الغرب',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(104, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            ' 4.2',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.star_outline_rounded,
                            size: 24,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      TabBar(indicatorColor:mainColor, tabs: [
                        Text(
                          AppLocalizations.of(context)!.details1,
                          style:  TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.details2,
                          style:  TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.details3,
                          style:  TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                
              ],
            ),
              Expanded(
            child: TabBarView(
              children: [
                
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:
                   ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const TabBarInformation();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:
                   ListView.builder(
                    itemCount: trips.length,
                    itemBuilder: (context, index) {
                      return  TabBarTrips(
                        type: trips[index].type,
                        price: trips[index].price,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:
                   ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const TabBarReview();
                    },
                  ),
                ),
              ),

            ]),
          ),
         
          ],
        ),
      ),
    );
  }
}
