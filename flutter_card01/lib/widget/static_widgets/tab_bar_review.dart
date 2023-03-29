import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/colors.dart';

class TabBarReview extends StatelessWidget {
  const TabBarReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: mainColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.network(
                    //       'http://3.bp.blogspot.com/-jEBvHvt4UXc/Vh09tEWFoRI/AAAAAAAAAiE/yWj75pVkzkc/s400/Ha-Nui-Lee%20MBW.jpg'),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Column(
                      children: [
                        Text(AppLocalizations.of(context)!.reviews1,
                        style:const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),),
                        Text(AppLocalizations.of(context)!.reviews2,
                         style: TextStyle(
                          color:mainColorText01,
                        ),),
                      ],
                    ),
                 
                    ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: mainColor),
                    Icon(Icons.star, color: mainColor),
                    Icon(Icons.star, color: mainColor),
                    Icon(Icons.star, color: secondaryColor02.withOpacity(0.5)),
                    Icon(Icons.star, color: secondaryColor02.withOpacity(0.5)),
                    
                  ],
                )
              ],
            ),
            Text(AppLocalizations.of(context)!.card2,
            style: TextStyle(
                          color:mainColorText.withOpacity(0.8),
                        ),),
          ],
        ),
      ),
    );
  }
}
