import 'dart:io';
import 'dart:math';

/**
 * Bài 53. Viết chương trình tính giai thừa của số tự nhiên n.
 */

void main() {
  int n = InputNumber();
  int result = GiaiThuaDeQuy(n);
  print("Giai thừa của số tự nhiên ${n} là: ${result}");
}

/**
 * Hàm nhập số nguyên dương
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 1);

  return result;
}

/**
 * Hàm GiaiThuaDeQuy(number)
 */
int GiaiThuaDeQuy(number) {
  return number < 2 ? number : (number * GiaiThuaDeQuy(number - 1));
}
