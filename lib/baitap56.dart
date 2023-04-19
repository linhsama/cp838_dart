import 'dart:io';
import 'dart:math';

/**
 * Bài 56. Viết hàm tìm UCLN của hai số nguyên a và b sử dụng đệ quy.
 */

void main() {
  int a = InputNumberA();
  int b = InputNumberB();
  int result = Euclid(a, b);
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
 * Hàm Euclid(a, b)
 */

int Euclid(int a, int b) {
  return b == 0 ? a : Euclid(b, a % b);
}
