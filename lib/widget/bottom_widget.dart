import 'package:appsoed/page/chat_page.dart';
import 'package:appsoed/page/home_page.dart';
import 'package:appsoed/page/news_page.dart';
import 'package:appsoed/page/profile_page.dart';
import 'package:appsoed/page/shop_page.dart';
import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
    required this.p,
  }) : super(key: key);

  final BottomProvider p;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
              child: Icon(
                Icons.home,
                color: primaryColor,
              ),
            ),
            title: Text(
              "Home",
              style: TextStyle(color: primaryColor),
            ),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
              child: Icon(Icons.menu_book_outlined, color: primaryColor),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NewsPage(),
                ));
              },
            ),
            title: Text(
              "News",
              style: TextStyle(color: primaryColor),
            ),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ShopPage(),
                ));
              },
              child: Icon(
                Icons.shopping_bag_rounded,
                color: primaryColor,
              ),
            ),
            title: Text(
              "Shop",
              style: TextStyle(color: primaryColor),
            ),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChatPage(),
                ));
              },
              child: Icon(
                Icons.chat,
                color: primaryColor,
              ),
            ),
            title: Text(
              "Chat",
              style: TextStyle(color: primaryColor),
            ),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ));
              },
              child: Icon(
                Icons.person,
                color: primaryColor,
              ),
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: primaryColor),
            ),
          )
        ],
        currentIndex: p.currentIndexBot,
        onTap: (i) {
          p.changeIndexBot = i;
        },
      ),
    );
  }
}
