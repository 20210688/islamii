import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    Locale currentLocale =context.locale;
    return Container(
      //height: MediaQuery.of(context).size.height* 0.5,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: (){
                context.setLocale(Locale ("ar"));
               // provider.ChangeLanguage(context,"ar");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("arabic".tr(),
                   style:Theme.of(context).textTheme.bodyMedium
                   ?.copyWith(color:
                   currentLocale==Locale('ar')?
                     primaryColor:
                    blackColor
                   ),
                 ),
                 currentLocale==Locale('ar')?
                 Icon(Icons.done,
                   size: 35,)
                 :SizedBox()
               ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: (){
                context.setLocale(Locale ("en"));
               // provider.ChangeLanguage(context,"en");
              },
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("english".tr(),
                      style:Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color:
                  currentLocale!=Locale('en')?
                  primaryColor:
                  blackColor
                  ),
                      ),
                  currentLocale!=Locale('en')?
                  Icon(Icons.done,
                    size: 35,)
                      :SizedBox()
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