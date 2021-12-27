import 'package:appsoed/model/news_model.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  final List<NewsModel> _model = NewsData.modelNews.map((e) {
    return NewsModel(
        id: e['id'].toString(),
        title: e['title'].toString(),
        imageUrl: e['imageUrl'].toString(),
        desc: e['desc'].toString());
  }).toList();

  List<NewsModel> get model => _model;
  NewsModel findById(nId) {
    return _model.firstWhere((newsId) => newsId.id == nId);
  }
}
