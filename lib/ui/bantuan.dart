import 'package:itemmu/ui/beranda.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/awal.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 36, 36),
      // AppBar
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appBarBantuan,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 36, 36, 36),
        toolbarHeight: heightDevice = 70,
        shape: Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
          width: widthDevice = 1,
        )),
      ),
      body: ListView(
        padding: EdgeInsets.only(
            left: paddingLeft = 10,
            top: paddingTop = 20,
            right: paddingRight = 10),
        children: [
          // Pusat Bantuan
          Container(
            padding: EdgeInsets.only(
                left: paddingLeft = 12,
                right: paddingRight = 12,
                top: paddingTop = 12,
                bottom: paddingBottom = 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          AppLocalizations.of(context)!.pusatBantuan,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.isiPusatBantuan,
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: paddingLeft = 10, right: paddingRight = 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: widthDevice = 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
          ),
          SizedBox(
            height: heightDevice = 20,
          ),

          // Komplain
          Container(
            padding: EdgeInsets.only(
                left: paddingLeft = 12,
                right: paddingRight = 12,
                top: paddingTop = 12,
                bottom: paddingBottom = 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          AppLocalizations.of(context)!.komplain,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.isiKomplain,
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: paddingLeft = 10, right: paddingRight = 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: widthDevice = 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
          ),
          SizedBox(
            height: heightDevice = 20,
          ),

          // Hubungi Itemmu
          Container(
            padding: EdgeInsets.only(
                left: paddingLeft = 12,
                right: paddingRight = 12,
                top: paddingTop = 12,
                bottom: paddingBottom = 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          AppLocalizations.of(context)!.hubungiItemmu,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.isiHubungiItemmu,
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: paddingLeft = 10, right: paddingRight = 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: widthDevice = 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Beranda();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/home.png'),
                  Text(
                    AppLocalizations.of(context)!.menuBeranda,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
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
                  Image.asset('assets/icon/bantuan_aktif.png'),
                  Text(
                    AppLocalizations.of(context)!.menuBantuan,
                    style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                  ),
                ],
              ),
            ),
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
