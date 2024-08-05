import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/widgets/list_buku.dart';

class KatalogBuku extends StatelessWidget {
  const KatalogBuku({super.key});

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
              children: const [
                ListKatalogBuku(
                  judulBuku: 'The Bachman Books Four Early Novels',
                  imageUrl: 'assets/book1.png',
                  author: 'Stephen King',
                  tahun: '2024',
                  ket: 1,
                ),
                ListKatalogBuku(
                  judulBuku: 'Control Your Mind and Master Your Feelings',
                  imageUrl: 'assets/book2.png',
                  author: 'Eric Robertson',
                  tahun: '2000',
                  ket: 0,
                  dipinjam: 'Estimasi Dipinjam Sampai 3 Mei 2024',
                ),
                ListKatalogBuku(
                  judulBuku: 'Elon Musk',
                  imageUrl: 'assets/book4.png',
                  author: 'Ashlee Vance',
                  tahun: '2020',
                  ket: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
