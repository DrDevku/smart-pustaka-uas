import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/widgets/list_buku.dart';

class DaftarPinjam extends StatefulWidget {
  const DaftarPinjam({super.key});

  @override
  State<DaftarPinjam> createState() => _DaftarPinjamState();
}

class _DaftarPinjamState extends State<DaftarPinjam>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        shrinkWrap: true,
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
            height: 16,
          ),
          TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: 'Buku'),
              Tab(text: 'Proses'),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: tabController,
              children: const [
                TabBuku(),
                TabProses(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// TAB BUKU
class TabBuku extends StatelessWidget {
  const TabBuku({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      children: const [
        ListDaftarPinjam(
          judulBuku: 'Control Your Mind and Master Your Feelings',
          imageUrl: 'assets/book2.png',
          author: 'Eric Robertson',
          tahun: '2000',
          dipinjam: '13 Mei 2024',
        ),
        ListDaftarPinjam(
          judulBuku: 'Read People Like A Book',
          imageUrl: 'assets/book3.png',
          author: 'Patrick King',
          tahun: '1998',
          dipinjam: '13 Mei 2024',
        ),
      ],
    );
  }
}

/// TAB Proses
class TabProses extends StatelessWidget {
  const TabProses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      children: const [
        ListDaftarPinjam(
          judulBuku: 'Control Your Mind and Master Your Feelings',
          imageUrl: 'assets/book2.png',
          author: 'Eric Robertson',
          tahun: '2000',
          ket: 0,
          dipinjam: '13 Mei 2024',
        ),
      ],
    );
  }
}
