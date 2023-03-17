import 'package:flutter/material.dart';
import 'package:flutter_card01/widget/button.dart';

// ignore: must_be_immutable, camel_case_types
class CardScreen extends StatefulWidget {
  String title;
  String dectitle;
  String image;

  CardScreen({
    Key? key,
    required this.title,
    required this.dectitle,
    required this.image,
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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            // height: 420,
            // width: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 8,
              child: Column(
                children: [
                  Stack(
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
                                image: NetworkImage(widget.image))),
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
                                isOk1 ? Icons.star : Icons.star_outline_rounded,
                                color: Colors.amber,
                              )),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            Row(
                              children: [
                                const Text(
                                  'طرابلس الغرب',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(104, 0, 0, 0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isOk = !isOk;
                              isOk ? maxline = 10 : maxline = 2;
                            });
                          },
                          child: Text(
                            widget.dectitle,
                            textAlign: TextAlign.end,
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
                          //      onTap: () {
                          //   setState(() {
                          //     isOk = !isOk;
                          //     isOk ? maxline = 10 : maxline = 2;
                          //   });
                          // },
                          child: const ButtonScreen(
                            isbackround: true,
                            title: 'معرفة المزيد',
                            widthh: 120,
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
