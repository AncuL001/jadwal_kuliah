import 'package:flutter/material.dart';
import '../model/mata_kuliah.dart';
import '../model/presensi.dart';

class AbsensiMataKuliahScreen extends StatelessWidget {
  final int mataKuliahIndex;
  final MataKuliah mataKuliah;
  const AbsensiMataKuliahScreen(
      {Key? key, required this.mataKuliahIndex, required this.mataKuliah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget infoSection = Padding(
      padding: const EdgeInsets.only(bottom: 32.0, left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            mataKuliah.nama,
            style: const TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w200,
            ),
          ),
          SelectableText(
            mataKuliah.id,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w100,
            ),
          ),
          SelectableText(
            mataKuliah.sks.toString() + " SKS",
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );

    Widget presensiCard(int presensiIndex) {
      Presensi presensi = mataKuliah.presensi[presensiIndex];
      return Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        elevation: 0.0,
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(
                    presensi.judul,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SelectableText(presensi.tanggal),
                      SelectableText(presensi.rentangJam),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Deskripsi:",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SelectableText(presensi.deskripsi),
              const SizedBox(height: 16),
              const Text(
                "Pengajar:",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SelectableText(presensi.dosen ?? mataKuliah.dosen),
              const SizedBox(height: 16),
              const Text(
                "Tautan:",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SelectableText(presensi.tautan),
              const SizedBox(height: 16),
              HadirButton(
                  mataKuliahIndex: mataKuliahIndex,
                  presensiIndex: presensiIndex)
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: mataKuliah.presensi.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) return infoSection;
          return presensiCard(index - 1);
        },
      ),
    );
  }
}

class HadirButton extends StatefulWidget {
  final int mataKuliahIndex;
  final int presensiIndex;
  const HadirButton(
      {Key? key, required this.mataKuliahIndex, required this.presensiIndex})
      : super(key: key);

  @override
  _HadirButtonState createState() => _HadirButtonState();
}

class _HadirButtonState extends State<HadirButton> {
  @override
  Widget build(BuildContext context) {
    bool hadir = daftarMataKuliah[widget.mataKuliahIndex]
        .presensi[widget.presensiIndex]
        .hadir;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Status Kehadiran:",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SelectableText(hadir ? "Hadir" : "Tidak Hadir"),
          ],
        ),
        TextButton(
          onPressed: hadir
              ? null
              : () {
                  setState(() => daftarMataKuliah[widget.mataKuliahIndex]
                      .presensi[widget.presensiIndex]
                      .hadir = !hadir);
                },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tandai Hadir",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),
          style: hadir
              ? null
              : TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
        ),
      ],
    );
  }
}
