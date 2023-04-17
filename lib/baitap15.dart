import 'dart:io';
import 'dart:math';

/**
 * Bài 15. Viết chương trình tìm ước số chung lớn nhất (UCLN) của hai số nguyên dương a và b nhập từ bàn phím.
 */

void main() {
  int a = InputNumberA();
  int b = InputNumberB();
  int result = UCLN(a, b);
  print("UCLN là: $result");
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

/**
 * Hàm Euclid(a, b)
 */

int Euclid(int a, int b) {
  if (b == 0) return a;
  return Euclid(b, a % b);
}
