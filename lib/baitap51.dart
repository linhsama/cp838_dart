import 'dart:io';
import 'dart:math';

/**
 * Bài 51. Cần có tổng 200.000đ từ 3 loại tiền 1000đ, 2000đ và 5000đ.
 * Lập chương trình để tìm tất cả các phương án có thể.
 * Tìm giá trị lớn nhất trong mảng một chiều các số thực.
 */

void main() {
  String result = HePhuongTrinh();
  print(result);
}

/**
    Giải phương trình 3 ẩn:
    1000x + 2000y + 5000z = 200000
    TXĐ:
      x thuộc [0,200]
      y thuộc [0,100]
      z thuộc [0,40]
 */

String HePhuongTrinh() {
  var result = [];
  int max = 0;
  int count = 0;
  for (int x = 0; x <= 200; x++) {
    for (int y = 0; y <= 100; y++) {
      for (int z = 0; z <= 40; z++) {
        if (1000 * x + 2000 * y + 5000 * z == 200000) {
          result.add([x, y, z]);
          max = Max(Max(x, y), z);
          count++;
        }
      }
    }
  }
  return "Số phương án có thể là: ${count} phương án \n${result.join('\n')} \n => Giá trị lớn nhất ${max}";
}

/**
 * Hàm kiểm tra Max(a,b)
 */
int Max(int a, int b) {
  return a >= b ? a : b;
}
