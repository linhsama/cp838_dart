
import 'dart:io';

/**
 * Bài 7. Viết chương trình in ra cách đọc của một số nguyên n cho trước có ba chữ số.
 * Ví dụ với n=123 thì kết quả in ra màn hình là Một trăm hai mươi ba.
 */

void main() {
  int n = InputNumber();
  String result = ReadNumber(n);
  print("Số ${n} đọc là: ${result}");
}

/**
 * Hàm nhập số
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương có 3 chữ số: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 100 || result > 999 || result.toString().length != 3);

  return result;
}

/**
 * Hàm đọc số có 3 chữ số
 */
String ReadNumber(number) {
      var ChuSo = [" không ", " một ", " hai ", " ba ", " bốn ", " năm ", " sáu ", " bảy ", " tám ", " chín "];
      var tram = (number / 100).toInt();
      var chuc = ((number % 100) / 10).toInt();
      var donvi = number % 10;
      var KetQua = "";

      if (tram == 0 && chuc == 0 && donvi == 0) {
        return "";
      }

      if (tram != 0) {
        KetQua += ChuSo[tram] + " trăm ";
        if ((chuc == 0) && (donvi != 0)) KetQua += " lẻ ";
      }

      if ((chuc != 0) && (chuc != 1)) {
        KetQua += ChuSo[chuc] + " mươi";
        if ((chuc == 0) && (donvi != 0)){
            KetQua = KetQua + " lẻ ";
        }
      }

      if (chuc == 1) {
        KetQua += " mười ";
      }

      switch (donvi) {
          case 1:
            if ((chuc != 0) && (chuc != 1)) {
              KetQua += " mốt ";
            }
            else {
              KetQua += ChuSo[donvi];
            }
            break;
          case 5:
            if (chuc == 0) {
              KetQua += ChuSo[donvi];
            }
            else {
              KetQua += " lăm ";
            }
            break;
          default:
            if (donvi != 0) {
              KetQua += ChuSo[donvi];
            }
            break;
        }

        return KetQua.trim();
}
