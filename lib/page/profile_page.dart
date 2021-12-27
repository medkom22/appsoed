import 'package:appsoed/page/tentang_page.dart';
import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:appsoed/widget/bottom_widget.dart';
import 'package:appsoed/widget/media_sosial_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<BottomProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomWidget(p: p),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, right: 20, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/baragia.png',
                        width: 60,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KABINET BARAGIA",
                            style: textHeaderProfile,
                          ),
                          Chip(
                            label: Text(
                              "Profil Kabinet",
                              style: chipTextProfile,
                            ),
                            backgroundColor: primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      "BARAGIA\nMembara – Bahagia",
                      style: textDescription.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffC4C4C4),
                    thickness: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Semangat dalam mengemban tanggung jawab membara bagai api yang menyala. Pantang Menyerah, melakukan perbaikan dari hari ke hari, tidak bekerja ala kadarnya, dan berdedikasi.\n\nBahagia datang dari diri kita sendiri. Saat semangat bertransformasi menjadi pencapaian yang melampaui diri. Saat perbuatan kita berdampak luas & positif bagi orang lain. Bahagia untuk diri sendiri, almamater, bangsa, dan negara. Menjadi bahagia yang terus membara.\n\n“Baragia” adalah nama dari sebuah cita-cita dan harapan. ",
                      style: textDescription.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Media Sosial BEM Unsoed", style: textMediaSosial),
                        const SizedBox(
                          height: 12,
                        ),
                        Wrap(spacing: 10, children: [
                          MediaSosialImageWidget(
                            imgUrl: imgListSosmed[0],
                            url: 'https://www.youtube.com/c/BEMUnsoed',
                          ),
                          MediaSosialImageWidget(
                            imgUrl: imgListSosmed[1],
                            url: 'https://twitter.com/bem_unsoed',
                          ),
                          MediaSosialImageWidget(
                            imgUrl: imgListSosmed[3],
                            url: 'https://www.instagram.com/bem_unsoed/',
                          ),
                          MediaSosialImageWidget(
                            imgUrl: imgListSosmed[4],
                            url: 'https://line.me/R/ti/p/%40UZF4935F',
                          ),
                          MediaSosialImageWidget(
                            imgUrl: imgListSosmed[5],
                            url: 'https://2021.bem-unsoed.com/',
                          ),
                        ])
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 55),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const TentangPage(),
                                transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) =>
                                    SlideTransition(
                                  position: Tween(
                                          begin: const Offset(1, 0),
                                          end: Offset.zero)
                                      .animate(animation),
                                  child: child,
                                ),
                              ));
                        },
                        child: Text(
                          "Tentang",
                          style: textButtonAdkesma,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgListSosmed = [
  'assets/sosmed/yt.png',
  'assets/sosmed/tw.png',
  'assets/sosmed/fb.png',
  'assets/sosmed/ig.png',
  'assets/sosmed/line.png',
  'assets/sosmed/web.png',
  'assets/sosmed/share.png',
];
