import 'dart:io';

void main() {
  print("=== Program Faktorial (Versi Perhitungan) ===");

  stdout.write("Masukkan bilangan bulat positif: ");
  String? input = stdin.readLineSync();

  int? angka = int.tryParse(input ?? "");
  if (angka == null || angka < 0) {
    print(" Input tidak valid! Masukkan bilangan bulat positif.");
  } else {
    int hasil = 1;
    for (int i = 1; i <= angka; i++) {
      hasil *= i;
    }
    print("Faktorial dari $angka adalah $hasil");
  }
}
