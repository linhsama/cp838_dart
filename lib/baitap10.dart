import 'dart:io';
import 'dart:math';

/**
 * Bài 10. Viết chương trình nhập ngày, tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày.
 */

void main() {
  DateTime date = InputDate();
  String result = GetDayDyMonth(date);
  print(result);
}

/**
 * Hàm nhập ngày tháng năm
 */
DateTime InputDate() {
  DateTime result = DateTime(2023 - 04 - 14);
  stdout.write("Nhập yyyy-mm-dd: ");
  result = DateTime.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm GetDayDyMonth
 */
String GetDayDyMonth(DateTime date) {
  String result = "";
  switch (date.month) {
    case 1:
    case 3:
    case 5:
    case 6:
    case 8:
    case 10:
    case 12:
      {
        result = "Tháng ${date.month} có 31 ngày.";
        break;
      }
    case 2:
      {
        if ((date.year % 4 == 0) & (date.year % 100 != 0))
          result = "Tháng ${date.month} có 29 ngày.";
        else
          result = "Tháng ${date.month} có 28 ngày.";
        break;
      }
    case 4:
    case 7:
    case 9:
    case 11:
      {
        result = "Tháng ${date.month} có 31 ngày.";
        break;
      }
  }
  return result;
}
