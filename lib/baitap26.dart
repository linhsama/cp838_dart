import 'dart:io';
import 'dart:math';

/**
  * Bài 26. Viết chương trình kiểm tra một số nguyên dương n có là số thuận nghịch hay không.
 * */

void main() {
  int n = InputNumber();
  bool result = CheckThuanNghich(n);
  if (result) {
    print("Số ${n} là số thuận nghịch");
  } else {
    print("Số ${n} không phải là số thuận nghịch");
  }
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
 * Hàm CheckThuanNghich(n)
 */
bool CheckThuanNghich(int n) {
  if (n.toString().contains(DaoChuoi(n.toString()))) {
    return true;
  } else {
    return false;
  }
}

/**
 * Hàm DaoChuoi(n)
 */
String DaoChuoi(String n) {
  return String.fromCharCodes(n.codeUnits.reversed);
}
