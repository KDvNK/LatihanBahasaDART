import 'dart:io';

void main(List<String> arguments) {
  // stdout.write("Input N = ");
  // int? n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= 4; i++) {
    for (int j = 1; j <= 8; j++) {
      if (j >= 5 - i && j <= 4 + i) {
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

  // for (int i = 0; i <= 5; i++) {
  //   for (int j = 1; j <= 5 - i; j++) stdout.write("*");
  //   for (int j = 1; j <= 2 * i - 1; j++) stdout.write("$i");
  //   print("*");
  // }
  // for (int i = 5 - 1; i >= 1; i--) {
  //   for (int j = 1; j <= 5 - i; j++) stdout.write(" ");
  //   for (int j = 1; j <= 2 * i - 1; j++) stdout.write("$i");
  //   print(" ");
  // }
}
