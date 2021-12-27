import 'package:appsoed/page/detail_news.dart';
import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/provider/news_provider.dart';
import 'package:appsoed/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NewsProvider>(
          create: (context) => NewsProvider(),
        ),
        ChangeNotifierProvider<BottomProvider>(
          create: (context) => BottomProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Appsoed Pro',
        routes: {
          DetailNews.routeName: (ctx) => const DetailNews(),
        },
        home: const SplashScreen(),
      ),
    );
  }
}
