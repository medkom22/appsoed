import 'package:flutter/material.dart';

class CobaApp extends StatelessWidget {
  const CobaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba App"),
      ),
      body: Row(
        children: [
          const Text("Coba App"),
          const Text("Coba Dengan Row"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text("Coba App"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
