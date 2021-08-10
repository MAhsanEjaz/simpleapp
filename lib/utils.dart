
import 'dart:convert';

mixin Utils{
  static void myLog(String message, {String? jsonString}) {
    if (jsonString != null) {
      final jsonObject = json.decode(jsonString);
      final jsonFormattedString =
      JsonEncoder.withIndent('  ').convert(jsonObject);
      print(
          '<--Zubair Yasin--><${DateTime.now().toString()}>\n$message\n\n$jsonFormattedString');
    } else {
      print('<--Zubair Yasin--><${DateTime.now().toString()}>$message');
    }
  }
}