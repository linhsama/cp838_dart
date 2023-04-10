/**
 * Bài 4. Viết chương trình in ra tất cả các số lẻ nhỏ hơn 100 trừ các số 5, 7, 93.
 */

void main() {
  String result = CheckNumber();
  print("Các số lẻ nhỏ hơn 100 trừ các số 5, 7, 93 là: ${result}");
}

/**
 * Hàm kiểm tra số lẻ nhỏ hơn 100 trừ các số 5, 7, 93
 */
String CheckNumber() {
  String result = "";
  for (int i = 1; i < 100; i += 2) {
    if (i != 5 && i != 7 && i != 93) {
      result += "\n ${i}";
    }
  }
  return result;
}
