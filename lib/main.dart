

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/home/home.dart';
import 'package:islamii/home/home.dart';
import 'package:islamii/my_theme_data.dart';
import 'package:islamii/providers/my_provider.dart';
import 'package:islamii/providers/sura_details%20provider.dart';
import 'package:islamii/sura_details.dart';
import 'package:provider/provider.dart';

import 'home/bottom_sheets/x.dart';
import 'home/hadeth_Details.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>MyProvider(),),

      ],
      child:EasyLocalization(
     supportedLocales: [
     Locale("en"),
      Locale("ar"),
     ],
        path: 'assets/translations',
        saveLocale: true,
        startLocale: Locale("en"),
        child: MyApp()),
      ),
       );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,

      locale: context.locale,
      debugShowCheckedModeBanner: false,
     themeMode:provider.mode,
     theme: MyThemeData.lightTheme,
     darkTheme: MyThemeData.darkTheme,
     initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=> HomeScreen(),
        SuraDetailsScreen.routeName:(context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routName:(context)=>HadethDetailsScreen (),

      },

    );

}
}


