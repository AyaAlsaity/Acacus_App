import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helpers/colors.dart';
import '../../widget/input_widgets/textformfield.dart';
import '../main_screens/home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  String titleSearch = 'أثار المدينة القديمة';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                child: Column(
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
                    SizedBox(
                      height: 10,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'استكشف معالم ليبيا بضغطة زر',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        
         
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFieldWidget(
              hintText: 'ابحث عن معلم، مدينة، او فندق',
              controller: searchController,
              keyboardType: TextInputType.name,
              readOnlyy:false,
              validator: (String? value) {
                return null;
              },
              ispassword: false,
              perfix: InkWell(
                child: const Icon(
                  Icons.search,
                ),
                onTap: () {
                  setState(() {
                    // titleSearch = searchController.text;
                    // istrue=!istrue;
                    searchController.clear();
                    
                  });
                  Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                },
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              height: 1.5,
              color: mainColorText01.withOpacity(0.3),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
         Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(

              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child:const Icon(Icons.close),
                      onTap: () {
                        // setState(() {
                        //   widget.titleSearch = '';
                        //   widget.istrue=false;
                
                        // });
                
                      },
                    ),
                     const Text('أثار المدينة القديمة'),
                  ],
                ),
               const SizedBox(
                  height: 16,
                ),
                 Divider(
              height: 1.5,
              color: mainColorText01.withOpacity(0.3),
            ),
              ],
            ),
          ),
 



         
        ],
      )),
    
    );
  }
}
