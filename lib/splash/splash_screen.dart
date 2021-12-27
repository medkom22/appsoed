import 'dart:async';
import 'dart:math';

import 'package:appsoed/page/home_page.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() {
    var duration = Duration(
      seconds: Random().nextInt(5),
    );
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Appsoed Pro",
              style: textSplash.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                text: "Media Komunikasi dan Informasi",
                style: textDescSplash,
                children: [
                  TextSpan(
                    text: "\nBEM UNSOED",
                    style: textSplash.copyWith(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
