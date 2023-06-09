import 'dart:io';

/**
 * Bài 7. Viết chương trình in ra cách đọc của một số nguyên n cho trước có ba chữ số.
 * Ví dụ với n=123 thì kết quả in ra màn hình là Một trăm hai mươi ba.
 */

void main() {
  int n = InputNumber();
  // String result = ReadNumber(n);
  String result = ReadNumberByArray(n);

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
String ReadNumber(int number) {
  String donVi = "";
  String chuc = "";
  String tram = "";

  int a = number % 10;
  int b = ((number / 10) % 10).toInt(); // a~/b chia lấy nguyên
  int c = (number / 100).toInt();

  switch (c) {
    case 1:
      tram = "Một trăm ";
      break;
    case 2:
      tram = "Hai trăm ";
      break;
    case 3:
      tram = "Ba trăm ";
      break;
    case 4:
      tram = "Bốn trăm ";
      break;
    case 5:
      tram = "Năm trăm ";
      break;
    case 6:
      tram = "Sáu trăm ";
      break;
    case 7:
      tram = "Bảy trăm ";
      break;
    case 8:
      tram = "Tám trăm ";
      break;
    case 9:
      tram = "Chín trăm ";
      break;
  }

  switch (b) {
    case 1:
      chuc = "mười ";
      break;
    case 2:
      chuc = "hai mươi ";
      break;
    case 3:
      chuc = "ba mươi ";
      break;
    case 4:
      chuc = "bốn mươi ";
      break;
    case 5:
      chuc = "năm mươi ";
      break;
    case 6:
      chuc = "sáu mươi ";
      break;
    case 7:
      chuc = "bảy mươi ";
      break;
    case 8:
      chuc = "tám mươi ";
      break;
    case 9:
      chuc = "chín mươi ";
      break;
  }

  switch (a) {
    case 0:
      donVi = "";
      break;
    case 1:
      donVi = "một";
      break;
    case 2:
      donVi = "hai";
      break;
    case 3:
      donVi = "ba";
      break;
    case 4:
      donVi = "bốn";
      break;
    case 5:
      donVi = "năm";
      break;
    case 6:
      donVi = "sáu";
      break;
    case 7:
      donVi = "bảy";
      break;
    case 8:
      donVi = "tám";
      break;
    case 9:
      donVi = "chín";
      break;
  }

  if (b == 0 && a != 0) {
    chuc = "lẻ ";
  }
  if (a == 1 && b != 0) {
    donVi = "mốt";
  }

  return tram + chuc + donVi;
}

/**
 * Hàm đọc số có 3 chữ số dùng mảng
 */
String ReadNumberByArray(number) {
  var ChuSo = [
    " không ",
    " một ",
    " hai ",
    " ba ",
    " bốn ",
    " năm ",
    " sáu ",
    " bảy ",
    " tám ",
    " chín "
  ];

  // 102 1 trăm lẻ hai
  // 112 1 trăm mười hai
  // 120 1 trăm hai mươi
  // 121 1 trăm hai mươi mốt
  // 125 1 trăm hai mươi lăm
  // 100 1 trăm

  var tram = (number / 100).toInt();
  var chuc = ((number % 100) / 10).toInt();
  var donvi = number % 10;
  var KetQua = "";

  KetQua += ChuSo[tram] + " trăm ";

  if ((chuc == 0) && (donvi != 0)) {
    KetQua = KetQua + " lẻ ";
  }

  if (chuc == 1) {
    KetQua += " mười ";
  }

  if ((chuc != 0) && (chuc != 1)) {
    KetQua += ChuSo[chuc] + " mươi";
  }

  switch (donvi) {
    case 1:
      if ((chuc != 0) && (chuc != 1)) {
        KetQua += " mốt ";
      } else {
        KetQua += ChuSo[donvi];
      }
      break;
    case 5:
      if (chuc == 0) {
        KetQua += ChuSo[donvi];
      } else {
        KetQua += " lăm ";
      }
      break;
    default:
      if (donvi != 0) {
        KetQua += ChuSo[donvi];
      }
      break;
  }

  return (KetQua.trim())[0].toUpperCase() +
      (KetQua.trim()).substring(1).toLowerCase();
}
