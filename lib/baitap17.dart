import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */
import 'dart:io';
import 'dart:math';

/**
 * Bài 17. Viết chương trình kiểm tra một số nguyên dương n có phải là số nguyên tố hay không.
 */

void main() {
  int n = InputNumber();
  String result = SoNguyenTo(n);
  print(result);
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số n > 2: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 2);
  return result;
}

/**
 * Hàm SoNguyenTo(n)
 */
String SoNguyenTo(n) {
  bool check = true;
  int t = sqrt(n).floor();
  for (int i = 2; i <= t; i++) {
    if (n % i == 0) {
      check = false;
      break;
    }
  }
  return check ? "$n là số nguyên tố" : "$n không số nguyên tố";
}
