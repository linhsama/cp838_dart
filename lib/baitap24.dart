import 'dart:io';
import 'dart:math';

/**
 * Bài 24. Viết chương trình phân tích số nguyên n thành các thừa số nguyên tố. Ví dụ: 100 = 2*2*5\*5.
 */

void main() {
  int n = InputNumber();
  String result = PhanTichThuaSoNguyenTo(n);
  print("${n} = ${result}");
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương > 1: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 2);
  return result;
}

/**
 * Hàm PhanTichThuaSoNguyenTo
 */
String PhanTichThuaSoNguyenTo(n) {
  String result = "";
  int i = 2;

  if (n < 3) {
    result += n.toString();
  } else {
    while (n > 1) {
      if (n % i == 0) {
        result += "*" + i.toString();
        n /= i;
      } else {
        i++;
      }
    }
  }

  return result.length > 1 ? result.substring(1) : result;
}
