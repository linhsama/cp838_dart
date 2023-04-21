import 'dart:io';
import 'dart:math';

/**
 * Bài 48. Giải phương trình trùng phương: ax^4 + bx^2 + c = 0
 */

void main() {
  num a = InputNumberA();
  num b = InputNumberB();
  num c = InputNumberC();
  String result = PhuongTrinhTrungPhuong(a, b, c);
  print("Kết quả của ${a}x^4 + ${b}x^2 + ${c}: $result");
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
 * Hàm PhuongTrinhTrungPhuong(a, b, c)
 */
String PhuongTrinhTrungPhuong(a, b, c) {
  String result = "";
  num delta = 0;
  num x1 = 0;
  num x2 = 0;

  if (a == 0) {
  } else {
    // ax^4 + bx^2 + c
    // đặt t = x^2 <=> x = +-sqrt(t)
    // at^2 + bx + c
    delta = b * b - 4 * a * c;

    if (delta < 0 || (delta >= 0 && (b / a) > 0 && (c / a) < 0)) {
      result = "Phương trình vô nghiệm";
    }

    if (c == 0 && (b / a) <= 0) {
      result = "Phương trình có nghiệm x = 0";
    }

    if ((delta == 0 && (b / a) < 0) || (delta > 0 && (c / a) < 0)) {
      num x = -b / (2 * a);
      result = "Phương trình có 2 nghiệm x1 = ${sqrt(x)} và x2  = ${-sqrt(x)}";
    } else {
      num x1 = (-b - sqrt(delta)) / (2 * a);
      num x2 = (-b + sqrt(delta)) / (2 * a);
      result = "Phương trình có 2 nghiệm x1 = ${x1}  và x2 = ${x2}";
    }
  }

  return result;
}
