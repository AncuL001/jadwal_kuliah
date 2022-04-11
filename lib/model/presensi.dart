class Presensi {
  String judul;
  String deskripsi;
  String tautan;
  String? dosen;
  String tanggal;
  String rentangJam;
  bool hadir;

  Presensi({
    required this.judul,
    required this.deskripsi,
    required this.tautan,
    required this.tanggal,
    required this.rentangJam,
    required this.hadir,
    this.dosen,
  });
}
