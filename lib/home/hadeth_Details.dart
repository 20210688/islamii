import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});
  static const String routName='HadethScreen';

  @override
  Widget build(BuildContext context) {

    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage(
            provider.mode==ThemeMode.light?
            'assets/images/main_bg.png':
            'assets/images/home_dark_background.png'
        ),
    )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.title,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            child: ListView.builder(itemBuilder:(context,index){
             return Text(model.content[index],
               textDirection: TextDirection.rtl,
               style:GoogleFonts.elMessiri(fontSize: 20,
               fontWeight: FontWeight.w400
               ),
      );
      },
            itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
