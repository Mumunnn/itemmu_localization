import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/beranda.dart';
import 'package:itemmu/ui/login_screen.dart';
import 'package:itemmu/ui/register_screen.dart';
import 'package:itemmu/ui/bantuan.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AwalScreen extends StatelessWidget {
  const AwalScreen({super.key});

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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: paddingTop = 40),
            width: widthDevice,
            height: heightDevice = 420,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 219, 115, 12),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(children: [
              //logo itemmu
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/banner.png',
                  width: widthDevice = 200,
                  height: heightDevice = 200,
                  fit: BoxFit.cover,
                ),
              ),
              //END logo itemmu
              //Tombol Buat Akun
              Container(
                margin: EdgeInsets.only(top: paddingTop = 30),
                height: heightDevice = 40,
                decoration: BoxDecoration(
                  //DecorationImage
                  border: Border.all(
                      color: Colors.black,
                      width: widthDevice = 1.3,
                      style: BorderStyle.none), //Border.all

                  borderRadius: BorderRadius.circular(15),

                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        2.0,
                        4.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 1,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.only(
                        left: paddingLeft = 125, right: paddingRight = 125),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                  child: Text(AppLocalizations.of(context)!.buatAkun),
                ),
              ),
              //END Tombol Buat akun
              //Kata Atau
              Container(
                padding: EdgeInsets.only(top: paddingTop = 25),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: paddingLeft = 20.0,
                            right: paddingRight = 13.0),
                        child: Divider(
                          color: Colors.black,
                          height: heightDevice = 30,
                          thickness: 1,
                        )),
                  ),
                  Text(AppLocalizations.of(context)!.atau),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: paddingLeft = 20.0,
                            right: paddingRight = 13.0),
                        child: Divider(
                          color: Colors.black,
                          height: heightDevice = 30,
                          thickness: 1,
                        )),
                  ),
                ]),
              ),
              //END Kata Atau
              //Opsi Sosmed
              Container(
                padding: EdgeInsets.only(top: paddingTop = 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      iconSize: 60,
                      icon: const Image(
                        image: AssetImage("assets/images/google.png"),
                        color: null,
                        fit: BoxFit.scaleDown,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AwalScreen()));
                      },
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: const Image(
                        image: AssetImage("assets/images/facebook.png"),
                        color: null,
                        fit: BoxFit.scaleDown,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AwalScreen()));
                      },
                    ),
                  ],
                ),
              ),
              //END Opsi Sosmed
            ]),
          ),
          //Kalimat Persetujuan
          Center(
            child: Container(
              padding: EdgeInsets.only(top: paddingTop = 30),
              // margin: const EdgeInsets.only(left: 57, right: 57),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksSatu,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksSatuSpan,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 218, 115, 9),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //END Kalimat Persetujuan
          //Opsi Login
          Center(
            child: Container(
              padding: EdgeInsets.only(top: paddingTop = 30),
              margin: EdgeInsets.only(
                  left: paddingLeft = 95, bottom: paddingBottom = 20),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksDua,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksDuaSpan,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 218, 115, 9),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //END Opsi Login
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
