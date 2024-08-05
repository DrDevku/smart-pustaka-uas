import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/widgets/list_buku.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: SearchBar(
              hintText: "Cari Judul Buku",
              backgroundColor: WidgetStateProperty.all<Color>(searchBackground),
              padding: WidgetStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
              ),
              leading: const Icon(Icons.search),
              trailing: const [Icon(Icons.mic)],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              children: [
                Text(
                  'MEI 2024',
                  style: greyText.copyWith(
                    fontWeight: medium,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                const ListRiwayat(
                  judulBuku: 'Atomic Habits',
                  imageUrl: 'assets/book6.png',
                  tanggalKembali: '12 Mei 2024',
                ),
                const ListRiwayat(
                  judulBuku: 'Atomic Habits',
                  imageUrl: 'assets/book6.png',
                  tanggalKembali: '12 Mei 2024',
                  ket: 0,
                ),

                /** BULAN KEDUA */
                Text(
                  'FEB 2024',
                  style: greyText.copyWith(
                    fontWeight: medium,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                const ListRiwayat(
                  judulBuku: 'The Bachman Books Four Early Novels',
                  imageUrl: 'assets/book1.png',
                  tanggalKembali: '12 Feb 2024',
                ),
                const ListRiwayat(
                  judulBuku: 'The Bachman Books Four Early Novels',
                  imageUrl: 'assets/book1.png',
                  tanggalKembali: '12 Feb 2024',
                  ket: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
