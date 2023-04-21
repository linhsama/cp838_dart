import 'dart:io';
import 'dart:math';

/**
 * Bài 47. Giải phương trình bậc hai: ax^2 + bx + c = 0
 */

void main() {
  num a = InputNumberA();
  num b = InputNumberB();
  num c = InputNumberC();
  String result = PhuongTrinhBacHai(a, b, c);
  print("Kết quả của ${a}x^2 + ${b}x + ${c}: $result");
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
 * Hàm nhập số C
 */
num InputNumberC() {
  num result = 0;
  stdout.write("Nhập số C: ");
  result = num.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm PhuongTrinhBacHai(a, b, c)
 */

String PhuongTrinhBacHai(a, b, c) {
  String result = "";
  num delta = 0;
  if (a == 0) {
    result = PhuongTrinhBacNhat(b, c);
  } else {
    delta = b * b - 4 * a * c;
    if (delta < 0)
      result = "Phương trình vô nghiệm";
    else if (delta == 0) {
      num x = -b / (2 * a);
      result = "Phương trình có nghiệm kép x1 = x2 = ${x}";
    } else {
      num x1 = (-b - sqrt(delta)) / (2 * a);
      num x2 = (-b + sqrt(delta)) / (2 * a);
      result = "Phương trình có 2 nghiệm x1 = ${x1}  và x2 = ${x2}";
    }
  }

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
