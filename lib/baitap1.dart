import 'dart:io';

/**
 *   Bài 1. Viết chương trình hỏi người dùng họ tên và tuổi (là một số nguyên).
 *   Tính và in ra màn hình còn bao nhiêu năm nữa thì người đó mừng thọ 100 tuổi
 */

void main() {
  String name = InputName();
  int age = InputAge();
  int result = CalcYear(age);
  print("Xin chào ${name}, còn ${result} là đến mừng thọ 100 tuổi!");
}

/**
 * Hàm nhập tên
 */
String InputName() {
  String result = "";

  do {
    stdout.write("Nhập tên: ");
    result = stdin.readLineSync()!;
  } while (result.isEmpty);

  return result;
}

/**
 * Hàm nhập tuổi
 */
int InputAge() {
  int result = 0;
  do {
    stdout.write("Nhập tuổi: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 0);

  return result;
}

/**
 * Hàm tính số năm
 * Số năm = 100 - số tuổi
 */
int CalcYear(int age) {
  int result = 100 - age;
  return result;
}
