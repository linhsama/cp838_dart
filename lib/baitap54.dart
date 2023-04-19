import 'dart:io';
import 'dart:math';

/**
 * Bài 54. Viết chương trình tính số hạng thứ n của dãy Fibonacci.
 */

void main() {
  int n = InputNumber();
  int result = Fibonacci(n);
  print("Số hạng thứ ${n} của dãy Fibonacci là: ${result}");
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số nguyên dương: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm Fibonacci(n)
 */
int Fibonacci(n) {
  int f0 = 0;
  int f1 = 1;
  int fn = 1;
  int i;

  if (n < 2) {
    return n;
  } else {
    for (i = 2; i < n; i++) {
      f0 = f1;
      f1 = fn;
      fn = f0 + f1;
    }
  }
  return fn;
}

/**
 * Hàm FibonacciDeQuy(n)
 */
int FibonacciDeQuy(n) {
  return n < 2 ? n : FibonacciDeQuy(n - 2) + FibonacciDeQuy(n - 1);
}
