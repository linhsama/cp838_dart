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
  do {
    stdout.write("Nhập số A: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 1);
  return result;
}

/**
 * Hàm nhập số B
 */
int InputNumberB() {
  int result = 0;
  do {
    stdout.write("Nhập số B: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 1);
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

/**
 * Hàm Euclid(a, b)
 */

int Euclid(int a, int b) {
  if (b == 0) return a;
  return Euclid(b, a % b);
}
