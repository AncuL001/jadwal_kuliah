import 'presensi.dart';

class MataKuliah {
  String nama;
  String id;
  String kelas;
  int sks;
  String jadwal;
  String dosen;
  List<Presensi> presensi;

  MataKuliah({
    required this.nama,
    required this.id,
    required this.kelas,
    required this.sks,
    required this.jadwal,
    required this.dosen,
    required this.presensi,
  });
}

List<MataKuliah> daftarMataKuliah = [
  MataKuliah(
    nama: "Etika Profesi",
    id: "D10G.4206",
    kelas: "B",
    sks: 2,
    jadwal: "Senin 08.00 - 09.40",
    dosen: "Pak Dosen A",
    presensi: [
      Presensi(
        judul: "Kontrak Belajar",
        deskripsi: "RPS dan kontrak belajar Etika Profesi",
        tautan: "https://zoom.us/j",
        tanggal: "21 Februari 2022",
        rentangJam: "08.00 - 09.40",
        hadir: false,
        dosen: "Pak Dosen Undangan",
      ),
      Presensi(
        judul: "Pekerja Profesional TI",
        deskripsi:
            "Mahasiswa memahami tentang pengertian profesi, profesional TI, Yang dikelola dalam hubungan profesional TI, Kode Etik Profesional TI, Organisasi dan masalah Etika Anggota TI.",
        tautan: "https://zoom.us/j",
        tanggal: "7 Maret 2022",
        rentangJam: "08.00 - 09.40",
        hadir: false,
      ),
    ],
  ),
  MataKuliah(
    nama: "Kecerdasan Buatan",
    id: "D10G.4201",
    kelas: "B",
    sks: 3,
    jadwal: "Senin 10.30 - 13.00",
    dosen: "Pak Dosen B",
    presensi: [
      Presensi(
        judul: "Kontrak Belajar",
        deskripsi: "Kontrak belajar Kecerdasan Buatan",
        tautan: "https://zoom.us/j",
        tanggal: "21 Februari 2022",
        rentangJam: "10.30 - 13.00",
        hadir: false,
      ),
      Presensi(
        judul: "Representasi Pengetahuan",
        deskripsi: "Lorem ipsum dolor sit amet",
        tautan: "https://zoom.us/j",
        tanggal: "7 Maret 2022",
        rentangJam: "10.30 - 13.00",
        hadir: false,
      ),
    ],
  ),
  MataKuliah(
    nama: "Etika Profesi Test",
    id: "D10G.4206",
    kelas: "B",
    sks: 2,
    jadwal: "Senin 08.00 - 09.40",
    dosen: "Pak Dosen AF",
    presensi: [],
  ),
  MataKuliah(
    nama: "Etika Profesi Test",
    id: "D10G.4206",
    kelas: "B",
    sks: 2,
    jadwal: "Senin 08.00 - 09.40",
    dosen: "Pak Dosen AF",
    presensi: [],
  ),
  MataKuliah(
    nama: "Etika Profesi Test",
    id: "D10G.4206",
    kelas: "B",
    sks: 2,
    jadwal: "Senin 08.00 - 09.40",
    dosen: "Pak Dosen AF",
    presensi: [],
  ),
  MataKuliah(
    nama: "Etika Profesi Test",
    id: "D10G.4206",
    kelas: "B",
    sks: 2,
    jadwal: "Senin 08.00 - 09.40",
    dosen: "Pak Dosen AF",
    presensi: [],
  ),
];
