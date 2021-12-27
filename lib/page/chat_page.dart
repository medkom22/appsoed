import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:appsoed/widget/bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  static void urlLauncer(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'Cannot access URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<BottomProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomWidget(p: p),
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 35),
                  child: Text(
                    "Ayo Sampaikan\nAspirasimu!",
                    style: chatTextPage,
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset(
                  'assets/adkesma.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Disini kamu bisa mengutarakan, keluhan, ataupun saran mengenai masalah UKT atau UP, Beasiswa, Kebijakan kampus, dan Fasilitas Kampus",
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                  urlLauncer('http://wa.me/62895385078071');
                },
                child: Text(
                  "Live Chat",
                  style: textButtonAdkesma,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
