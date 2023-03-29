
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../helpers/colors.dart';

class TabBarInformation extends StatelessWidget {
  const TabBarInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
              Icon(Icons.calendar_month,color: mainColor,),
             const SizedBox(
          width: 5,
        ),
            Text(AppLocalizations.of(context)!.details4,),
           
          ],
        ),
        const SizedBox(
          height: 5,
        ),
         Row(
          children: [
             Icon(Icons.lock_clock,color: mainColor,),
             const SizedBox(
          width: 5,
        ),
            Text(AppLocalizations.of(context)!.details5,),
            
          ],
        ),
        const SizedBox(
          height: 5,
        ),
         Row(
          children: [
             Icon(Icons.people,color: mainColor,),
            const SizedBox(
          width: 5,
        ),
            Text(AppLocalizations.of(context)!.details6,),
            
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.card2,
        ),
      ],
    );
  }
}