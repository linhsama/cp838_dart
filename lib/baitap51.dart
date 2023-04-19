import 'dart:io';
import 'dart:math';

/**
 * Bài 51. Cần có tổng 200.000đ từ 3 loại tiền 1000đ, 2000đ và 5000đ.
 * Lập chương trình để tìm tất cả các phương án có thể.
 * Tìm giá trị lớn nhất trong mảng một chiều các số thực.
 */

void main() {
  String result = HePhuongTrinh();
  print("$result");
}

/**
    Giải hệ phương trình:

    1000x + 2000y + 5000z = 200.000

    200 * 1000 = 200000 <=> x thuộc [0, 200]
    100 * 2000 = 200000 <=> y thuộc [0, 100]
    40 * 5000 = 200000 <=> z thuộc [0, 40]

    [200,0,0]

 */

String HePhuongTrinh() {
  String result = "";
  int max = 0;
  for (int i = 0; i <= 200; ++i) {
    for (int j = 0; j <= 100; ++j) {
      for (int k = 0; k <= 40; ++k) {
        if (i * 1000 + j * 2000 + k * 5000 == 200000) {
          max = Max(Max(i, j), k);
          result += "\n" + "Cần ${i} tờ 1000đ, ${j} tờ 2000đ và ${k} tờ 5000đ";
        }
      }
    }
  }
  return "Kết quả: ${result} \n => Giá trị lớn nhất ${max}";
}

/**
 * Hàm kiểm tra Max(a,b)
 */
int Max(int a, int b) {
  return a >= b ? a : b;
}
