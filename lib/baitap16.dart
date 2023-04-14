import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */
import 'dart:io';
import 'dart:math';

/**
 * Bài 16. Viết chương trình tìm bội số chung nhỏ nhất (BCNN) của hai số nguyên dương a và b nhập từ bàn phím.
 */

void main() {
  int a = InputNumberA();
  int b = InputNumberB();
  double result = BCNN(a, b);
  print("BCNN là: $result");
}

/**
 * Hàm nhập số A
 */
int InputNumberA() {
  int result = 0;
  stdout.write("Nhập số A: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm nhập số B
 */
int InputNumberB() {
  int result = 0;
  stdout.write("Nhập số B: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm BCNN(a, b)
 */
double BCNN(a, b) {
  return (a * b) / UCLN(a, b);
}

/**
 * Hàm UCLN(a, b)
 */
int UCLN(a, b) {
  while (a != b) {
    if (a > b)
      a = a - b;
    else
      b = b - a;
  }
  return a;
}
