import 'package:flutter/material.dart';
import '../model/mata_kuliah.dart';
import 'absensi_mata_kuliah_screen.dart';

class MataKuliahListScreen extends StatelessWidget {
  const MataKuliahListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Absensi Mata Kuliah",
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            "Semangat belajarnya bro",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );

    Widget mataKuliahCard(int mataKuliahIndex) {
      MataKuliah mataKuliah = daftarMataKuliah[mataKuliahIndex];
      return Card(
        color: Theme.of(context).primaryColorLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0.0,
        margin: const EdgeInsets.only(bottom: 16.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: Colors.white.withAlpha(50),
          hoverColor: Colors.white.withAlpha(50),
          highlightColor: Colors.white.withAlpha(50),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AbsensiMataKuliahScreen(
                  mataKuliahIndex: mataKuliahIndex,
                  mataKuliah: mataKuliah,
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mataKuliah.nama,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(mataKuliah.id),
                    Text(mataKuliah.sks.toString() + " SKS"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(mataKuliah.jadwal),
                    Text("Kelas " + mataKuliah.kelas),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: daftarMataKuliah.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) return titleSection;
          return mataKuliahCard(index - 1);
        },
      ),
    );
  }
}
