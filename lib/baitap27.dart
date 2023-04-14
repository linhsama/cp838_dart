import 'dart:io';
import 'dart:math';

/**
 * Viết chương trình liệt kê tất cả các số nguyên tố nhỏ hơn n. Số nguyên dương n được nhập từ bàn phím.
 */

void main() {
  int n = InputNumber();
  String result = ListSoNguyenTo(n);
  print("Danh sách số nguyên tố < ${n} là: ${result}");
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số nguyên dương: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
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

/**
 * Hàm ListSoNguyenTo(n)
 */
String ListSoNguyenTo(n) {
  String result = "";
  int i = 2;
  while (i < n) {
    if (SoNguyenTo(i)) {
      result += "," + i.toString();
    }
    i++;
  }

  return result.substring(1);
}
