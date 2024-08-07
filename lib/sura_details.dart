
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/my_theme_data.dart';
import 'package:islamii/providers/my_provider.dart';
import 'package:islamii/providers/sura_details%20provider.dart';
import 'package:islamii/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName ='suraDetails';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provider = Provider.of<MyProvider>(context);

    // var provider=Provider.of<SuraDetailsProvider>(context);

    //if(provider.verses.isEmpty) {
    //provider.loadSuraFile(model.index);
    //}
    return ChangeNotifierProvider(
      create: (context)=> SuraDetailsProvider()..loadSuraFile(model.index),
      builder: (context,child)=> Stack(
        children: [
          Image.asset(
              provider.mode==ThemeMode.light?
              'assets/images/main_bg.png':
              'assets/images/home_dark_background.png'
          ),
          Scaffold(
            appBar: AppBar(

              title:Text( model.name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            body: Card(
              margin: EdgeInsets.all(12),
              color: Color(0x80B7935F),
              elevation: 4,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(itemBuilder: (context,index){
                  return Text("${Provider.of<SuraDetailsProvider>(context).verses[index]}(${index+1})",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  );
                },
                  itemCount:Provider.of<SuraDetailsProvider>(context).verses.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


