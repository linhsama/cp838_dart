import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Bài 12. Viết chương trình in bảng cửu chương ra màn hình.
 */
import 'dart:io';
import 'dart:math';

/**
 * Bài 14. Viết một chương trình tính giai thừa của một số nguyên dương n. Với n được nhập từ bàn phím.
 * Ví dụ, n = 8 thì kết quả đầu ra phải là 1*2*3*4*5*6*7*8 = 40320
 */

void main() {
  int number = InputNumber();
  String result = GiaiThua(number);
  print(result);
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

/**
 * Hàm GiaiThua(number)
 */
String GiaiThua(n) {
  int result = n;
  if (n <= 2) {
    result = n;
  } else {
    for (int i = 1; i < n; i++) {
      stdout.write(i);
      stdout.write('*');
      result *= i;
    }
  }
  return "${n} = ${result}";
}
