import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../helpers/colors.dart';

class TabBarTrips extends StatelessWidget {
  final String type;
  final String price;
  const TabBarTrips({
    Key? key,
    required this.type,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: mainColor, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
             mainAxisAlignment : MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    type,
                    style: TextStyle(color: secondaryColor02),
                  ),
                  Row(
                    children: [
                      Text(
                        "${price}\ ",
                        style: const TextStyle(fontSize: 20,fontWeight:FontWeight.w600),
                      ),
                       Text(
                        AppLocalizations.of(context)!.trips4,
                        ),
                    ],
                  ),
                ],
              ),
              Row(
               
                children: [
                  Text(AppLocalizations.of(context)!.trips5,),
                  const SizedBox(
                    width: 5,
                  ),
                   Icon(Icons.arrow_forward_outlined,color:mainColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
