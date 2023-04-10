import 'dart:io';
import 'dart:math';

/**
 * Bài 8. Viết chương trình sinh ra một số tự nhiên n ngẫu nhiên từ 1 đến 100.
 * Đề nghị người dùng đoán một số và nhập vào.
 * In ra màn hình thông báo xem số người dùng đoán đúng, lớn hơn hay nhỏ hơn số n.
 * Nếu chưa đúng thì cho phép người dùng đoán lại hai lần nữa.
 */

void main() {
  bool check = true;
  int numberRandom = RandomNumber();
  print("Trò chơi bắt đầu! Số ngẫu nhiên là: ${numberRandom}");

  do {
    int number = InputNumber();
    int result = GuessNumber(numberRandom, number);
    if (result < 0) {
      print("Tiếc quá bạn đã đoán nhỏ hơn!");
    }
    if (result == 0) {
      print("Chúc mừng bạn đã đoán đúng!");
      check = false;
    }
    if (result > 0) {
      print("Tiếc quá bạn đã đoán lớn hơn!");
    }
  } while (check);
}

/**
 * Hàm random(1,100)
 */

int RandomNumber() {
  int result = 0;
  Random random = new Random();
  do {
    result = random.nextInt(101); // 0 - 100
  } while (result < 1);
  return result;
}

/**
 * Hàm nhập số nguyên từ 1 - 100
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên từ 1 - 100: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 1);

  return result;
}

/**
 * Hàm đoán số
 */

int GuessNumber(int numberRandom, int number) {
  return number - numberRandom;
}
