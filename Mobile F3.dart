class Saya {
  // Fields
  String nama;
  int umur;

  // Constructor
  Saya(this.nama, this.umur);

  // Method 1 dengan 3 fields
  void tampilkanInfo(String jurusan, bool statusAktif, double nilaiAkhir) {
    print('Nama: $nama');
    print('Umur: $umur');
    print('Jurusan: $jurusan');
    print('Status Aktif: ${statusAktif ? "Ya" : "Tidak"}');
    print('Nilai Akhir: $nilaiAkhir');
  }

  // Method 2 dengan 3 fields
  void perbaruiData(int umurBaru, String keterangan, DateTime tanggalPerbarui) {
    umur = umurBaru;
    print('Umur baru: $umur');
    print('Keterangan: $keterangan');
    print('Tanggal Pembaruan: ${tanggalPerbarui.toLocal().toString().split(" ")[0]}');
  }
}

void main() {
  // Membuat instance dari Saya
  var saya = Saya('Idawati', 18); // Umur awal 18

  // Status aktif
  bool statusAktif = true; // Ubah ke false jika tidak aktif

  // Memanggil method tampilkanInfo
  saya.tampilkanInfo('Teknik Informatika', statusAktif, 85.5);

  // Memanggil method perbaruiData
  saya.perbaruiData(19, 'Ulang Tahun', DateTime.now()); // Umur baru 19
}
