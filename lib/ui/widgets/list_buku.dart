import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/widgets/buttons.dart';

/// LIST MENU KATALOG BUKU
class ListKatalogBuku extends StatelessWidget {
  final String imageUrl;
  final String judulBuku;
  final String author;
  final String tahun;
  final int ket;
  final String? dipinjam;

  const ListKatalogBuku(
      {super.key,
      required this.judulBuku,
      this.author = '-',
      this.tahun = '-',
      required this.imageUrl,
      this.ket = 1,
      this.dipinjam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 36,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              /** gambar buku */
              imageUrl,
              width: 100,
              height: 150,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        /** judul, author dan tahun si buku */
                        judulBuku,
                        style: blackText.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Author: $author',
                        style: greyText.copyWith(
                          fontWeight: medium,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'Year: $tahun',
                        style: greyText.copyWith(
                          fontWeight: medium,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  ket == 1
                      ? const CustomFilledButton(
                          title: 'Pinjam',
                          width: 130,
                          height: 40,
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sedang Dipinjam',
                              style: redText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              dipinjam!,
                              style: purpleText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/** END LIST MENU KATALOG BUKU */

/// LIST MENU DAFTAR PINJAM
class ListDaftarPinjam extends StatelessWidget {
  final String imageUrl;
  final String judulBuku;
  final String author;
  final String tahun;
  final int ket;
  final String? dipinjam;

  const ListDaftarPinjam(
      {super.key,
      required this.judulBuku,
      this.author = '-',
      this.tahun = '-',
      required this.imageUrl,
      this.ket = 1,
      this.dipinjam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 36,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              /** gambar buku */
              imageUrl,
              width: 100,
              height: 150,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        /** judul, author dan tahun si buku */
                        judulBuku,
                        style: blackText.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Author: $author',
                        style: greyText.copyWith(
                          fontWeight: medium,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'Year: $tahun',
                        style: greyText.copyWith(
                          fontWeight: medium,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  ket == 1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Batas Waktu Peminjaman',
                              style: redText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              dipinjam!,
                              style: purpleText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Peminjaman diproses petugas',
                              style: redText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/** END LIST MENU DAFTAR PINJAM */

/// LIST MENU RIWAYAT
class ListRiwayat extends StatelessWidget {
  final String imageUrl;
  final String judulBuku;
  final String tanggalKembali;
  final int ket;

  const ListRiwayat({
    super.key,
    required this.judulBuku,
    required this.imageUrl,
    required this.tanggalKembali,
    this.ket = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.asset(
              /** gambar buku */
              imageUrl,
              width: 44,
              height: 66,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 66,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        /** judul, author dan tahun si buku */
                        judulBuku,
                        style: blackText.copyWith(
                          fontWeight: medium,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        tanggalKembali,
                        style: greyText.copyWith(
                          fontWeight: medium,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ket == 1
                          ? Text(
                              'Dipinjam',
                              style: purpleText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            )
                          : Text(
                              'Dikembalikan',
                              style: redText.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/** END LIST MENU RIWAYAT */