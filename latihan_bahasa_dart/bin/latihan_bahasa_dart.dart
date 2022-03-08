import 'dart:io';

void func1(int n) {
  for (int i = 0; i <= n; i++) {
    for (int j = 1; j <= n * 2; j++) {
      if (j >= n + 1 - i && j <= n + i) {
        stdout.write(" ");
      } else {
        stdout.write(i);
        // for (int q = 1; q <= 4; q++) {
        //   stdout.write(q);
        //   if (q >= 4) {
        //     for (int q = 4; q >= 1; q--) {
        //       stdout.write(q);
        //     }
        //   }
        //   stdout.write(i);
        // }
      }
    }
    print(" ");
  }
}

void func2(int n) {
  int row = 1;
  for (double i = n / 2; i > 0; i--) {
    //print upper part
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    for (int j = 1; j <= row; j++) {
      stdout.write(row);
      stdout.write(" ");
      // if (row == 1) {
      //   stdout.write("**");
      // } else if (row % 2 == 0) {
      //   stdout.write("*");
      // } else {
      //   stdout.write(" ");
      // }
    }
    print(" "); //move to next line
    row++;
  }
  for (int i = 0; i <= n / 2; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    for (int j = row; j >= 1; j--) {
      //print lower part
      stdout.write(row);
      stdout.write(" ");
    }
    print(" "); //move to next line
    row--;
  }

  // for (int i = 0; i <= n; i++) {
  //   for (int j = 1; j <= n - i; j++) stdout.write("*");
  //   for (int j = 1; j <= n * i - 1; j++) stdout.write("$i");
  //   print("*");
  // }
  // for (int i = n - 1; i >= 1; i--) {
  //   for (int j = 1; j <= n - i; j++) stdout.write(" ");
  //   for (int j = 1; j <= n * i - 1; j++) stdout.write("$i");
  //   print(" ");
  // }
}

void main(List<String> arguments) {
  stdout.write("Input N = ");
  String? dtInput1 = stdin.readLineSync();
  int n1 = int.parse(dtInput1!);
  func1(n1);
  stdout.write("Input N = ");
  String? dtInput2 = stdin.readLineSync();
  int n2 = int.parse(dtInput2!);
  func2(n2);
}
