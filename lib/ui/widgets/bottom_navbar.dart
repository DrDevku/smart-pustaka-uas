import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/pages/daftar_pinjam.dart';
import 'package:smart_pustaka/ui/pages/katalog_buku.dart';
import 'package:smart_pustaka/ui/pages/riwayat.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<Widget> _children = const [
    KatalogBuku(),
    DaftarPinjam(),
    Riwayat(),
  ];

  void onTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        backgroundColor: botnavbarBackground,
        iconSize: 24,
        selectedFontSize: 12,
        selectedItemColor: botnavbaractiveColor,
        selectedLabelStyle: botnavbaractiveText.copyWith(
          fontWeight: semiBold,
        ),
        unselectedFontSize: 12,
        unselectedItemColor: botnavbaroffColor,
        unselectedLabelStyle: botnavbaroffText.copyWith(fontWeight: medium),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Katalog Buku"),
          BottomNavigationBarItem(
              icon: Icon(Icons.turned_in_not), label: "Daftar Pinjaman"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: "Riwayat"),
        ],
      ),
    );
  }
}
