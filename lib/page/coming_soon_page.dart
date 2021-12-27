import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class CoomingSoonPage extends StatelessWidget {
  const CoomingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/coming.png',
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "COMING SOON...",
              style: textMediaSosial,
            )
          ],
        ),
      ),
    );
  }
}
