import 'package:flutter/material.dart';
import 'package:itemmu/ui/awal.dart';
import 'package:itemmu/ui/beranda.dart';
import 'package:itemmu/ui/bantuan.dart';
import 'package:itemmu/ui/profil_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: non_constant_identifier_names
  bool lihat_pass = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: paddingTop = 30),
            width: widthDevice,
            height: heightDevice = 600,
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
              //Form Login
              Container(
                padding: EdgeInsets.only(
                    left: paddingLeft = 12, right: paddingRight = 12),
                child: Column(children: [
                  Form(
                    //key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Masukkan Username';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            //controller: emailcon,
                            decoration: InputDecoration(
                              labelText: AppLocalizations.of(context)!.username,
                            )),
                        TextFormField(
                          obscureText: lihat_pass,
                          enableSuggestions: false,
                          autocorrect: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Password';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          //controller: passwordcon,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.password,
                            suffixIcon: IconButton(
                              icon: lihat_pass
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: togglePassVisibility,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // roundbutton(
                  //     title: "Login",
                  //     tapfun: () {
                  //       FirebaseAuth.instance
                  //           .signInWithEmailAndPassword(
                  //               email: emailcon.text.toString(),
                  //               password: passwordcon.text.toString())
                  //           .then((value) {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) =>
                  //                     homescreen(name: '')));
                  //       }).onError((error, stackTrace) {
                  //         toastmessage(error.toString());
                  //       });
                  //     }),
                  SizedBox(
                    height: heightDevice = 25,
                  ),
                  // Text("- OR -"),
                  // SizedBox(
                  //   height: 10,
                  // ),
                ]),
              ),
              //END Form Login
              //Tombol Buat Akun
              Container(
                margin: EdgeInsets.only(top: paddingTop = 35),
                height: heightDevice = 40,
                decoration: BoxDecoration(
                  //DecorationImage
                  border: Border.all(
                      color: Colors.black,
                      width: widthDevice = 1.3,
                      style: BorderStyle.none), //Border.all

                  borderRadius: BorderRadius.circular(25),

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
                        left: paddingLeft = 135, right: paddingRight = 135),
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ProfilScreen()));
                  },
                  child: Text(AppLocalizations.of(context)!.tombolLogin),
                ),
              ),
              //END Tombol Buat akun
              //Kata Atau
              Container(
                padding: EdgeInsets.only(top: paddingTop = 35),
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
                            left: paddingLeft = 13.0,
                            right: paddingRight = 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: heightDevice = 36,
                          thickness: 1,
                        )),
                  ),
                ]),
              ),
              //END Kata Atau
              //Opsi Sosmed
              Container(
                padding: EdgeInsets.only(top: paddingTop = 5),
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
                    AppLocalizations.of(context)!.menuCari,
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

  void togglePassVisibility() => setState(() {
        lihat_pass = !lihat_pass;
      });
}
