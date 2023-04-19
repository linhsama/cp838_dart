import 'dart:io';
import 'dart:math';

/**
 * Viết chương trình tính tổng các số tự nhiên từ 1 tới n.
 */

void main() {
  int n = InputNumber();
  int result = TongSoNguyen(n);
  print(
      "Viết chương trình tính tổng các số tự nhiên từ 1 tới ${n} là: $result");
}

/**
 * Hàm nhập số
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số nguyên dương: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm TongSoNguyen(n)
 */
int TongSoNguyen(n) {
  int result = 0;
  for (int i = 0; i <= n; i++) {
    result += i;
  }
  return result;
}
