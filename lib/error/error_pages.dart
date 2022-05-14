import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error 404'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ERROR PAGE'),
      ),
    );
  }
}
