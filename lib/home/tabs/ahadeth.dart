import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/hadeth_model.dart';
import 'package:islamii/home/hadeth_Details.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  void initState() {
    super.initState();
    LoadHadethFile();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/hadith_header-1.png',
          width: 312,
          height: 219,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
          'ahadeth'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
          ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap:() {
                 Navigator.pushNamed(context, HadethDetailsScreen.routName,
                 arguments: allAhadeth[index]
                 );
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,

                  ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

   LoadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadethOne = ahadeth[i];
        List<String> hadethLines = hadethOne.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);
      }
      setState(() {});
    });
  }
}

