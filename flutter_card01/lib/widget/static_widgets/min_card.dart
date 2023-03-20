import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MinCard extends StatelessWidget {
  String title;

  String image;
  MinCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
            height: 5,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
              Row(
                
                
                children: const [
                  Icon(
                    Icons.star_outline_rounded,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      ' 4.2',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      title,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    
                    children: const [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          '2.3 كم',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 14,
                           color: Colors.red,
                          ),
                        ),
                      ),
                      Icon(Icons.wrong_location,color: Colors.red,),
                    ],
                  ),
                ],
              ),
               const SizedBox(
                width: 15,
              ),
              Container(
                width: 70,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)),
              ),
            ]),
             
          ],
        ),
      ),
    );
  }
}
