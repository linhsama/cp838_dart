import 'dart:io';
import 'dart:math';

/**
 * Bài 25. Viết chương trình tính tổng của các chữ số của môt số nguyên n trong Dart.
 * Số nguyên dương n được nhập từ bàn phím.
 * Với n = 1234, tổng các chữ số: 1 + 2 + 3 + 4 = 10.
 * */

void main() {
  int n = InputNumber();
  // int result = TinhTong(n);
  String result = TinhTongArray(n);

  print("${result}");
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
 * Hàm TinhTong
 */
int TinhTong(int n) {
  int result = 0;
  do {
    result += n % 10;
    n ~/= 10;
  } while (n > 0);
  return result;
}

/**
 * Hàm TinhTongArray
 */
String TinhTongArray(n) {
  String result = "";
  String list = n.toString().trim();
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += int.parse(list[i]);
    result += "+" + list[i];
  }

  result = result + " = " + sum.toString();
  return result.substring(1);
}
