import 'dart:io';

void main() {
  print("=== Program Faktorial (Versi Input Validation) ===");

  stdout.write("Masukkan bilangan bulat positif: ");
  String? input = stdin.readLineSync();

  int? angka = int.tryParse(input ?? "");
  if (angka == null || angka < 0) {
    print("⚠️ Input tidak valid! Masukkan bilangan bulat positif.");
  } else {
    print("Input valid: $angka");
  }
}