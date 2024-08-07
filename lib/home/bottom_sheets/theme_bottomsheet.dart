import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/bottom_sheets/x.dart';
import 'package:islamii/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme_data.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Container(
      //height: MediaQuery.of(context).size.height* 0.5,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: (){
             provider.ChangeTheme(ThemeMode.light);
             Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("light".tr(),
                    style:Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color: primaryColor),),
                  Icon(Icons.done,color: primaryColor,size: 30,),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: (){
                provider.ChangeTheme(ThemeMode.dark);
                Navigator.pop(context);

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("dark".tr()),
                  // Icon(Icons.done,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
