import 'package:flutter/material.dart';


import '../../helpers/colors.dart';

class CardDiscover extends StatelessWidget {
  String title;
  String dectitle;
  String image;
  CardDiscover({
    Key? key,
    required this.title,
    required this.dectitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       

        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: mainColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill)),
            ),
            const SizedBox(
              width: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
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
                    SizedBox(
                      width: 200,
                      child: Text(
                        dectitle,
                        textAlign: TextAlign.start,
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 12,
                            color: mainColorText.withOpacity(0.8)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
