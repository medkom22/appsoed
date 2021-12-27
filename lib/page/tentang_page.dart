import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 24,
                      ),
                      child: Text(
                        "Tentang",
                        style: textTentang,
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "App Soed",
                            style: textSplash.copyWith(fontSize: 18),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apa itu Apppsoed Pro",
                                  style: textSplash.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                const Text(
                                  "Apppsoed Pro adalah platform yang bertujuan untuk  mengintegrasikan sumber daya informasi seputar dunia perkuliahan, fasilitas kampus, kebijakan universitas, berkas administratif, arsip data, serta sarana menyampaikan aspirasi, kritik, keluhan yang ada di  Universitas Jendral Soedirman demi memberikan kenyamanan kepada mahasiswa dan terwujudnya Kampus Universitas Jendral Soedirman yang lebih baik.",
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Dikembangkan dan dikelola oleh :",
                                  style: textSplash.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                const Text(
                                  "Kementrian Media Komunikasi dan Informasi\nUniversitas Jendral Soedirman",
                                  textAlign: TextAlign.justify,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "version 1.0",
                  style: textVersion,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
