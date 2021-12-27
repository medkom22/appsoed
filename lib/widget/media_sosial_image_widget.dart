import 'package:appsoed/page/chat_page.dart';
import 'package:flutter/material.dart';

class MediaSosialImageWidget extends StatelessWidget {
  final String url;
  final String imgUrl;
  const MediaSosialImageWidget({
    Key? key,
    required this.url,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ChatPage.urlLauncer(url);
      },
      child: Image.asset(
        imgUrl,
        width: 35,
        fit: BoxFit.cover,
      ),
    );
  }
}
