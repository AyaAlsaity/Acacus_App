import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/sub_screens/details_screen_one.dart';
import '../clickable_widgets/button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable, camel_case_types
class CardScreen extends StatefulWidget {
  String title;
  String dectitle;
  String image;
  bool expandable;
  CardScreen({
    Key? key,
    required this.title,
    required this.dectitle,
    required this.image,
    this.expandable = true,
  }) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

// ignore: camel_case_types
class _CardScreenState extends State<CardScreen> {
  int maxline = 2;
  bool isOk = false;
  bool isOk1 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            // height: 420,
            width: 320,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 1.5,
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(widget.image),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isOk1 = !isOk1;
                              // isOk1 ? icon = Icon(Icons.star) : icon=Icon(Icons.star_outline_rounded);
                            });
                          },
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(113, 255, 255, 255),
                              child: Icon(
                                isOk1
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: Colors.white,
                              )),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.title,
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
                        const SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {
                            if (widget.expandable) {
                              setState(() {
                                isOk = !isOk;
                                isOk ? maxline = 10 : maxline = 2;
                              });
                            }
                          },
                          child: Text(
                            widget.dectitle,
                            textAlign: TextAlign.start,
                            softWrap: true,
                            maxLines: maxline,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => DetailsScreenOne()),
                            );
                          },
                          child: ButtonScreen(
                            isbackround: false,
                            title: AppLocalizations.of(context)!.butt2,
                            widthh: 120,
                            heightt: 40,
                            paddingg: 5.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
