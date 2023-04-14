import 'dart:io';
import 'dart:math';

/**
 * Bài 23. Viết chương trình liệt kê tất cả số nguyên tố có 5 chữ số.
 */

void main() {
  String result = ListSoNguyenTo();
  print("Tất cả số nguyên tố có 5 chữ số là: ${result}");
}

/**
 * Hàm ListSoNguyenTo()
 */
String ListSoNguyenTo() {
  String result = "";
  int count = 10000;
  while (count < 99999) {
    if (SoNguyenTo(count)) {
      result += "," + count.toString();
    }
    count++;
  }

  return result.substring(1);
}

/**
 * Hàm SoNguyenTo(n)
 */
bool SoNguyenTo(n) {
  bool result = true;
  if (n < 2) {
    result = false;
  }
  for (int i = 2; i <= sqrt(n).floor(); i++) {
    if (n % i == 0) {
      result = false;
      break;
    }
  }
  return result;
}
