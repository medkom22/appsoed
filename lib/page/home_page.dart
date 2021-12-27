import 'package:appsoed/page/binggo_page.dart';
import 'package:appsoed/page/coming_soon_page.dart';
import 'package:appsoed/page/faculty_page.dart';
import 'package:appsoed/page/faq.dart';
import 'package:appsoed/page/news_page.dart';
import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:appsoed/widget/bottom_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<BottomProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomWidget(p: p),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Selamat Datang!',
                      style: headerHomeText.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '\nKBM Unsoed',
                          style: headerHomeText.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/logobem.png',
                    width: 44,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            carouselWidget(context),
            Container(
              margin: const EdgeInsets.only(top: 6, left: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Layanan",
                    style: layananText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(runSpacing: 10, spacing: 10, children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CoomingSoonPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[0], imgUrl: imgMenuHome[0]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FacultyPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[1], imgUrl: imgMenuHome[1]),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BinggoPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[2], imgUrl: imgMenuHome[2]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CoomingSoonPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[3], imgUrl: imgMenuHome[3]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CoomingSoonPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[4], imgUrl: imgMenuHome[4]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FaqPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[5], imgUrl: imgMenuHome[5]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewsPage(),
                        ));
                      },
                      child: WidgetMenuHome(
                          name: textMenuHome[6], imgUrl: imgMenuHome[6]),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container carouselWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class WidgetMenuHome extends StatelessWidget {
  final String imgUrl;
  final String name;
  const WidgetMenuHome({Key? key, required this.name, required this.imgUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl,
          height: 60,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: menuText,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

final List<String> imgMenuHome = [
  'assets/mic_icon.png',
  'assets/facul_icon.png',
  'assets/binggo_icon.png',
  'assets/data_icon.png',
  'assets/pusat_icon.png',
  'assets/faq_icon.png',
  'assets/news_icon.png',
  'assets/info_icon.png',
];
final List<String> textMenuHome = [
  'E-Magz',
  'Fakultas',
  'Binggo',
  'Data\nUnsoed',
  'Pusat Data',
  'FAQ',
  'News',
  'Profile'
];

final List<String> imgList = [
  'assets/slider1.png',
  'assets/slider2.png',
  'assets/slider3.png',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(
              item,
              fit: BoxFit.fill,
            ),
          ),
        ))
    .toList();
