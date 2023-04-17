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
 * Hàm UCLN(a, b)
 */
int UCLN(a, b) {
  while (a != b) {
    if (a > b)
      a -= b;
    else
      b -= a;
  }
  return a;
}

/**
 * Hàm UCLN_MOD(a, b)
 */
int UCLN_MOD(a, b) {
  while (a * b != 0) {
    if (a > b)
      a %= b;
    else
      b %= a;
  }
  return a + b;
}

/**
 * Hàm Euclid(a, b)
 */

int Euclid(int a, int b) {
  if (b == 0) return a;
  return Euclid(b, a % b);
}
