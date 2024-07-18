import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/homepage.dart';
import 'package:instagram/sabitler/ext.dart';
import 'package:instagram/sabitler/tema.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);
  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  Tema tema = Tema();
  bool sifre_gozukme=false;

  get username => "Şahiner";
  get password => "Güler";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 100),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: renk(arka_renk)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: renk("dc2c1d"),
                        width: 12,
                      ),
                    ),
                    child: Icon(Icons.school, size: 70, color: renk("dc2c1d")),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    "MAUNSTAGRAM",
                    style: GoogleFonts.dancingScript(
                      color: renk("dc2c1d"),
                      fontSize: 35,
                    ),
                  ),
                ),
                Container(
                  decoration: tema.inputBoxDec(),
                  margin:
                  EdgeInsets.only(top: 30, bottom: 10, right: 30, left: 30),
                  padding:
                  EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    decoration: tema.inputDec(
                         "Kurumsal Posta Adresinizi Giriniz", Icons.people_alt_outlined),

                    style: GoogleFonts.quicksand(
                      color: renk(metin_renk),
                    ),
                  ),
                ),
                Container(
                  decoration: tema.inputBoxDec(),
                  margin:
                  EdgeInsets.only(top: 10, bottom: 15, right: 30, left: 30),
                  padding:
                  EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: sifre_gozukme,
                          decoration: tema.inputDec("Şifrenizi Giriniz", Icons.vpn_key_outlined),
                          style: GoogleFonts.quicksand(
                            color: renk(metin_renk),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){
                        setState(() {
                          sifre_gozukme = !sifre_gozukme;
                        });
                      }, icon: Icon( sifre_gozukme? Icons.remove_red_eye: Icons.close,
                        color: renk("fdfeff"),),),
                    ],
                  ),
                ),
                   TextButton(
                     onPressed: (){
                       if(username == 'Şahiner' && password=='Güler'){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => HomePage()));
                       }else{
                         showDialog(
                             barrierDismissible: false,
                             context: context,
                             builder: (BuildContext context){
                               return AlertDialog(
                                 title: Text("Hata"),
                                 content: Text("Giriş Bilgileriniz Hatalı"),
                                 actions: <Widget>[
                                   MaterialButton(
                                       child: Text("Geri Dön"),
                                       onPressed:() => Navigator.pop(context))
                                 ],
                               );
                             });
                       }
                     },
                    child: Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,right: 30,left: 30),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            renk("dc2c1d"),
                            renk("dc2c1d"),
                            renk("db2c1c"),
                          ],
                            begin: Alignment.bottomRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0,4),
                              blurRadius: 5,
                            )
                          ]
                      ),
                      child: Center(
                        child: Text(
                          "Giriş Yap",
                          style: GoogleFonts.quicksand(color: Colors.white, fontSize: 20,),
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
