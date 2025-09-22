import 'dart:io';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  print("=== Program Faktorial ===");
  print("Ketik 'exit' untuk keluar.\n");

  while (true) {
    // Input angka
    stdout.write("Masukkan bilangan bulat positif: ");
    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == "exit") break;

    int? angka = int.tryParse(input);

    // Validasi input (percabangan)
    if (angka == null || angka < 0) {
      print("⚠️ Input tidak valid! Masukkan bilangan bulat positif.\n");
      continue;
    }

    // Hitung faktorial (perulangan)
    int hasil = 1;
    for (int i = 1; i <= angka; i++) {
      hasil *= i;
    }

    // Simpan ke riwayat
    riwayat.add({
      'angka': angka,
      'hasil': hasil,
    });

    print("Faktorial dari $angka adalah $hasil\n");
  }

  // Tampilkan seluruh riwayat
  if (riwayat.isNotEmpty) {
    print("\n===== Riwayat Perhitungan Faktorial =====");
    for (var data in riwayat) {
      print("${data['angka']}! = ${data['hasil']}");
    }
  }

  print("\nTerima kasih sudah menggunakan program faktorial!");
}
