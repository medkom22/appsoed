import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:appsoed/widget/bottom_widget.dart';
import 'package:appsoed/widget/chip_widget_merch.dart';
import 'package:appsoed/widget/product_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
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
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/logo_merch.png',
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gensoed Merch",
                            style: headerMerch,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: const [
                              ChipWidget(
                                name: "Shopee",
                                url: 'https://shopee.co.id/gensoed.merch',
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              ChipWidget(
                                name: "Instagram",
                                url: 'https://www.instagram.com/bem_unsoed/',
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  carouselWidget(context),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Product",
                    style: detailProduct,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ProductItemWidget(),
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

final List<String> imgList = [
  'assets/slider_merch_1.png',
  'assets/slider_merch_2.png',
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
