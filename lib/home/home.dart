import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/home/tabs/ahadeth.dart';
import 'package:islamii/home/tabs/quran.dart';
import 'package:islamii/home/tabs/radio.dart';
import 'package:islamii/home/tabs/sebha.dart';
import 'package:islamii/home/tabs/settings.dart';

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

    return Stack(
      children: [
        Image.asset('assets/images/main_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.transparent,

            title:Text( 'islamii',style:GoogleFonts.elMessiri(
              fontSize: 30,color:Colors.black,fontWeight:FontWeight.w700
            ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap:(value) {
              selectedIndex=value;
              setState(() {

              });
            },
            backgroundColor: Color(0xffB7935F),
            type:BottomNavigationBarType.shifting ,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran.png') ),label: '',
              backgroundColor: Color(0xffB7935F) ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/sebha.png') ),label: '',
              backgroundColor: Color(0xffB7935F) ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/radio.png') ),label: '',
                backgroundColor: Color(0xffB7935F)),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ahadiths.png') ),label: '',
              backgroundColor: Color(0xffB7935F)  ),
              BottomNavigationBarItem(icon:Icon(Icons.settings ),label: '',
              backgroundColor: Color(0xffB7935F)),



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
