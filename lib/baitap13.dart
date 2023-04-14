import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */
import 'dart:io';
import 'dart:math';

/**
 * Bài 13. Hãy sử dụng vòng lặp for để in tất cả các ký tự A tới Z ra màn hình.
 */

void main() {
  String result = CharAToZ();
  String result_2 = CharaToz();
  print(result + "\n" + result_2);
}

/**
 * Hàm CharAToZ
 */
String CharAToZ() {
  String result = "";
  for (int i = 65; i <= 90; i++) {
    result += "," + (String.fromCharCode(i));
  }
  return result.substring(1);
}

/**
 * Hàm CharaToz
 */
String CharaToz() {
  String result = "";
  for (int i = 97; i <= 122; i++) {
    result += "," + (String.fromCharCode(i));
  }
  return result.substring(1);
}
