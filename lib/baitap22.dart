import 'dart:io';
import 'dart:math';

/**
 * Bài 22. Viết chương trình tìm số nguyên dương m lớn nhất sao cho 1 + 2 + 3 + … + m < N.
 */

void main() {
  int n = InputNumber();
  int result = MaxNumber(n);
  print(
      "Số nguyên dương m lớn nhất sao cho 1 + 2 + 3 + … + m < ${n} là: ${result}");
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
 * Hàm tìm số lớn nhất sao cho 1 + 2 + 3 + … + m < N
 */
int MaxNumber(n) {
  int sum = 0;
  int count = 0;

  while ((sum + count) < n - 1) {
    sum += ++count;
  }

  return count;
}
