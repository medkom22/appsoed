import 'package:appsoed/page/chat_page.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class BinggoPage extends StatelessWidget {
  const BinggoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/binggo.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "BINGGO! (Bisa di enggo!)\n",
                style: textBinggo.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Nyari musik pengiring tapi takut kena copyright?\nTenang aja ada BINGGO! alias bisa dienggo\nKami menyediakan musik gratis bebas copyright untuk kalian!",
                  style: textBinggo.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    ChatPage.urlLauncer('https://ke.bem-unsoed.com/Binggo');
                  },
                  child: const Text("BINGGO"))
            ],
          ),
        ),
      ),
    );
  }
}
