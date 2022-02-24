import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  var text = "";
  var textLength = 0;
  var textLast = "";
  onCh(val) {
    String temp = val;
    text = "$temp  => Text Length $textLength";
    if (temp.isEmpty) {
      textLength = 0;
    } else {
      textLength = temp.length ;
    }

    notifyListeners();
  }
}
