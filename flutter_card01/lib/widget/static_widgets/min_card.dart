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
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
            height: 5,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.center,
              
              children: [
                Container(
                width: 70,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage(image),fit: BoxFit.fill)),
              ),
             const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      Icon(Icons.location_on,color: Colors.red,size: 16,),
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
                      
                    ],
                  ),
                ],
              ),
               const SizedBox(
                width: 15,
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Row(
                  
                  // crossAxisAlignment : CrossAxisAlignment.start,
                  
                  children: const [

                    
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
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Icon(
                        Icons.star_outline_rounded,
                        size: 25,
                      ),
                    ),
                   
                  ],
              ),
               ),
              
              ]),
             
          ],
        ),
      ),
    );
  }
}
