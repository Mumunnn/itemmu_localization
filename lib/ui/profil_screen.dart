import 'package:flutter/material.dart';
import 'package:itemmu/ui/bantuan.dart';
import 'package:itemmu/ui/awal.dart';
import 'package:itemmu/ui/beranda.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 62, 62),
      body: Stack(
        children: [
          //Top Section
          Container(
            width: widthDevice,
            height: heightDevice = 270,
            decoration: BoxDecoration(
              color: const Color.fromARGB(212, 255, 131, 3),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(35),
            ),
            //END Top Section
            child: Column(
              children: [
                //Foto Profil
                Container(
                  padding: EdgeInsets.only(top: paddingTop = 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(140),
                  ),
                  child: CircleAvatar(
                    radius: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(360),
                      child: SizedBox.expand(
                          child: Image.asset(
                        "assets/images/foto.jpg",
                        fit: BoxFit.fill,
                      )),
                    ),
                  ),
                ),
                //END Foto Profil
                SizedBox(
                  height: heightDevice = 10,
                ),
                Text(
                  "Arfau",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //Menu Info Akun
          Positioned(
            top: paddingTop = 220,
            left: paddingLeft = 5,
            right: paddingRight = 5,
            child: Container(
              margin: EdgeInsets.only(
                  left: paddingLeft = 25, right: paddingRight = 25),
              width: widthDevice = 345,
              height: heightDevice = 130,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 36, 36),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              ),
              //Pilihan Menu Info Akun
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                alignment: MainAxisAlignment.spaceEvenly,
                buttonMinWidth: 10,
                children: [
                  //Container = menu
                  //expanded = pembatas
                  Container(
                    margin: EdgeInsets.only(
                        top: paddingTop = 25, bottom: paddingBottom = 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon:
                              const Icon(Icons.account_balance_wallet_outlined),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                        Text(
                          AppLocalizations.of(context)!.profilDompet,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            top: paddingTop = 20, bottom: paddingBottom = 20),
                        child: const VerticalDivider(
                          color: Color.fromARGB(255, 121, 121, 121),
                          thickness: 1,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: paddingTop = 25, bottom: paddingBottom = 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.shopping_cart_outlined),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                        Text(
                          AppLocalizations.of(context)!.profilKeranjang,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            top: paddingTop = 20, bottom: paddingBottom = 20),
                        child: const VerticalDivider(
                          color: Color.fromARGB(255, 121, 121, 121),
                          thickness: 1,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: paddingTop = 25, bottom: paddingBottom = 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: Image(
                            image: AssetImage("assets/images/promo.png"),
                            color: Colors.white,
                            width: widthDevice = 30,
                            height: heightDevice = 30,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                        Text(
                          AppLocalizations.of(context)!.profilKupon,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //END Pilihan Menu Info Akun
            ),
          ),
          SizedBox(
            height: heightDevice = 100,
          ),
          //END Menu Info Akun
          //Mid Section
          Container(
            margin:
                EdgeInsets.only(top: paddingTop = 150, left: paddingLeft = 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.profilTeks,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //Menu History
          Container(
            margin:
                EdgeInsets.only(top: paddingTop = 300, left: paddingLeft = 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Pilihan Menu History
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ElevatedButton.icon(
                          icon: Image(
                            image: AssetImage("assets/images/tunggu.png"),
                            color: Colors.white,
                            width: widthDevice = 50,
                            height: heightDevice = 50,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                        Text(
                          AppLocalizations.of(context)!.profilBayar,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            icon: Image(
                              image: AssetImage("assets/images/proses.png"),
                              color: Colors.white,
                              width: widthDevice = 50,
                              height: heightDevice = 50,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Colors.red.withOpacity(0),
                            ),
                            label: const Text(" "),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: paddingTop = 10,
                                bottom: paddingBottom = 10),
                            child: Text(
                              AppLocalizations.of(context)!.profilProses,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            icon: Image(
                              image: AssetImage("assets/images/selesai.png"),
                              color: Colors.white,
                              width: widthDevice = 50,
                              height: heightDevice = 50,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Colors.red.withOpacity(0),
                            ),
                            label: const Text(" "),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: paddingRight = 17),
                            child: Text(
                              AppLocalizations.of(context)!.profilSelesai,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //END Pilihan Menu History
                Container(
                    margin: EdgeInsets.only(
                        left: paddingLeft = 20, right: paddingRight = 30),
                    child: const Divider(
                      color: Color.fromARGB(255, 121, 121, 121),
                      thickness: 2,
                    )),
              ],
            ),
          ),
          //END Menu History
          //END Mid Section
        ],
      ),
      //Footer
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
                    return const Beranda();
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
                    return const Bantuan();
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const AwalScreen();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/akun_aktif.png'),
                  Text(
                    AppLocalizations.of(context)!.menuAkun,
                    style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //END Footer
    );
  }
}
