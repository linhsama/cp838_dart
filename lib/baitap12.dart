import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */
import 'dart:io';
import 'dart:math';

/**
 * Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */

void main() {
  String result = MultiTable();
  print(result);
}

/**
 * Hàm MultiTable
 */
String MultiTable() {
  String result = "";
  for (int i = 2; i <= 9; i++) {
    print('----------BẢNG CỬU CHƯƠNG ${i}-------------');

    for (int j = 1; j <= 9; j++) {
      print('$i x $j = ${i * j}');
    }
  }
  return result;
}
