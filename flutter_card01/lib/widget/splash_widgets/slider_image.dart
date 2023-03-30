import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderImage extends StatefulWidget {
  
  String image;
   SliderImage({
      
    required this.image,
    super.key});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  int maxline = 2;
  bool isOk = false;
  bool isOk1 = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    decoration:  BoxDecoration(
                        borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                              widget.image
                              ), fit: BoxFit.fill)),
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
                          backgroundColor: const Color.fromARGB(113, 255, 255, 255),
                          child: Icon(
                            isOk1 ? Icons.favorite : Icons.favorite_border_outlined,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
    );
  }
}