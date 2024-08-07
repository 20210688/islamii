
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetailsProvider extends ChangeNotifier{

  List<String> verses=[];
  loadSuraFile(int index)async{
    String sura= await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>suralines=sura.trim().split("\n");
    print('suralines');
    verses=suralines;
    notifyListeners();

  }
 }