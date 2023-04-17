import 'dart:io';
import 'dart:math';

/**
 * Bài 19. Tìm số nguyên dương n nhỏ nhất sao cho 1 + 2 + … + n > 10000.
 */

void main() {
  int result = MinNguyenDuong();

  print(
      "Số nguyên dương n nhỏ nhất sao cho 1 + 2 + … + n > 10000 là: ${result}");
}

/**
 * Hàm MinNguyenDuong(n)
 */
int MinNguyenDuong() {
  int sum = 0;
  int i = 0;
  while (sum < 10000) {
    i++;
    sum = sum + i;
  }
  return i;
}
