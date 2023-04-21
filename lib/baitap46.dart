import 'dart:io';

/**
 * Bài 46. Giải phương trình bậc nhất: ax + b = 0
 */

void main() {
  num a = InputNumberA();
  num b = InputNumberB();
  String result = PhuongTrinhBacNhat(a, b);
  print("Kết quả của ${a}x + ${b}: $result");
}

/**
 * Hàm nhập số A
 */
num InputNumberA() {
  num result = 0;
  stdout.write("Nhập số A: ");
  result = num.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm nhập số B
 */
num InputNumberB() {
  num result = 0;
  stdout.write("Nhập số B: ");
  result = num.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm PhuongTrinhBacNhat(a, b)
 */

String PhuongTrinhBacNhat(a, b) {
  String result = "";
  num x = 0;
  if (a == 0) {
    if (b == 0) {
      result = "Phương trình có vô số nghiệm";
    } else {
      result = "Phương trình vô nghiệm";
    }
  } else {
    x = (-b / a);
    result = "Phương trình có nghiệm x=${x}";
  }

  return result;
}
