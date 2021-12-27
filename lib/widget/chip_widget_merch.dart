import 'package:appsoed/page/chat_page.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String name, url;
  const ChipWidget({Key? key, required this.name, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ChatPage.urlLauncer(url);
      },
      child: Chip(
        label: Text(name),
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}
