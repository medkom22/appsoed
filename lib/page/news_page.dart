import 'package:appsoed/page/detail_news.dart';
import 'package:appsoed/provider/bottom_provider.dart';
import 'package:appsoed/provider/news_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:appsoed/widget/bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<NewsProvider>(context);
    var data = p.model;
    var c = Provider.of<BottomProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomWidget(p: c),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 30),
            child: Text(
              "Baragia News",
              style: titleNews,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                  thickness: 1,
                );
              },
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, DetailNews.routeName,
                        arguments: data[index].id);
                  },
                  title: Text(
                    data[index].title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  key: Key(data[index].id),
                  leading: Image.network(
                    data[index].imageUrl,
                    errorBuilder: (context, error, stackTrace) =>
                        const Text("Tidak ada internet"),
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
