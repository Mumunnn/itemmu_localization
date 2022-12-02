import 'package:itemmu/ui/bantuan.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/awal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // Appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 3),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(
                  left: paddingLeft = 20, bottom: paddingBottom = 100),
              child: Row(
                children: [
                  Stack(
                    children: [Image.asset('assets/images/logo.png')],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: paddingLeft = 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ITEMMU',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(heightDevice = 150)),
      ),
      // body
      body: ListView(
        padding:
            EdgeInsets.only(left: paddingLeft = 20, right: paddingRight = 20),
        children: [
          SizedBox(
            height: heightDevice = 50,
          ),
          Text(
            AppLocalizations.of(context)!.subJudulSatu,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: heightDevice = 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemKategori(
                title: 'Mobile Legends',
                image: 'assets/images/ml.png',
              ),
              ItemKategori(
                title: 'League Of Legends',
                image: 'assets/images/lol.png',
              ),
              ItemKategori(
                title: 'Valorant',
                image: 'assets/images/valorant.png',
              )
            ],
          ),
          SizedBox(
            height: heightDevice = 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemKategori(
                title: 'Apex Legends',
                image: 'assets/images/apex.png',
              ),
              ItemKategori(
                title: 'Genshin Impact',
                image: 'assets/images/genshin.png',
              ),
              ItemKategori(
                title: 'Call Of Duty',
                image: 'assets/images/cod.png',
              )
            ],
          ),
          SizedBox(
            height: heightDevice = 50,
          ),
          Text(
            AppLocalizations.of(context)!.subJudulDua,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: heightDevice = 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemKategori(
                title: 'Super Sus',
                image: 'assets/images/supersus.png',
              ),
              ItemKategori(
                title: 'Lokapala',
                image: 'assets/images/lokapala.png',
              ),
              ItemKategori(
                title: 'Diablo : Immortal',
                image: 'assets/images/diablo.png',
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: widthDevice = 1, color: Colors.grey))),
        height: heightDevice = 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Beranda
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon/home_aktif.png'),
                Text(
                  AppLocalizations.of(context)!.menuBeranda,
                  style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                ),
              ],
            ),
            // Cari
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon/search.png'),
                Text(
                  AppLocalizations.of(context)!.menuCari,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            // Bantuan
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Bantuan();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/bantuan.png'),
                  Text(
                    AppLocalizations.of(context)!.menuBantuan,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            // Akun
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return AwalScreen();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/akun.png'),
                  Text(
                    AppLocalizations.of(context)!.menuAkun,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Menu game
class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          style: const TextStyle(color: Colors.white, height: 2),
        )
      ],
    );
  }
}
