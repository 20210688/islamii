
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/home/tabs/ahadeth.dart';
import 'package:islamii/home/tabs/quran.dart';
import 'package:islamii/home/tabs/radio.dart';
import 'package:islamii/home/tabs/sebha.dart';
import 'package:islamii/home/tabs/settings.dart';
import 'package:islamii/my_theme_data.dart';
import 'package:provider/provider.dart';
import '../providers/my_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName ='Home';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex=0;

  @override

  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);


    return Stack(
      children: [
        Image.asset(
            provider.mode==ThemeMode.light?
            'assets/images/main_bg.png':
            'assets/images/home_dark_background.png'
        ),
        Scaffold(

          appBar: AppBar(
            title:Text( 'islami'.tr(),
              style:Theme.of(context).textTheme.bodyLarge ,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap:(value) {
              selectedIndex=value;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran.png') ),label: '',
              ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/sebha.png') ),label: '',
              ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/radio.png') ),label: '',
               ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ahadiths.png') ),label: '',
               ),
              BottomNavigationBarItem(icon:Icon(Icons.settings ),label: '',
             ),
            ],),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab(),
  ];
}
