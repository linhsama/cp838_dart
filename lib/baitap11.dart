import 'dart:io';
import 'dart:math';

/**
 * Bài 11. Viết chương trình nhập ngày, tháng, năm. Hãy cho biết ngày đó là thứ mấy.
 */

void main() {
  DateTime date = InputDate();
  String result = GetDayOfWeek(date);
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
String GetDayOfWeek(DateTime date) {
  String result = "";
  switch (date.weekday) {
    case 1:
      {
        result = "Ngày ${date} là thứ Hai";
        break;
      }
    case 2:
      {
        result = "Ngày ${date} là thứ Ba!";
        break;
      }
    case 3:
      {
        result = "Ngày ${date} là thứ Tư!";
        break;
      }
    case 4:
      {
        result = "Ngày ${date} là thứ Năm";
        break;
      }
    case 5:
      {
        result = "Ngày ${date} là thứ Sáu";
        break;
      }
    case 6:
      {
        result = "Ngày ${date} là thứ Bảy";
        break;
      }
    case 7:
      {
        result = "Ngày ${date} là Chủ Nhật";
        break;
      }
  }
  return result;
}
