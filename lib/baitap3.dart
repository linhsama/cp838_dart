/**
 * Bài 3. In ra màn hình tất cả các số nguyên dương lẻ nhỏ hơn 100.
 */

void main() {
  String result = CheckNumber();
  print("Các số nguyên dương lẻ nhỏ hơn 100 là: ${result}");
}

/**
 * Hàm kiểm tra số nguyên dương lẻ nhỏ hơn 100
 */
String CheckNumber() {
  String result = "";
  for (int i = 1; i < 100; i += 2) {
    result += "\n ${i}";
  }
  return result;
}
