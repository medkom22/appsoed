import 'package:appsoed/provider/news_provider.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailNews extends StatelessWidget {
  static const routeName = '/detail-news';
  const DetailNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final product = Provider.of<NewsProvider>(context).findById(productId);

    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Center(
                          child: Text(
                            "Baragia News",
                            style: titleNews,
                          ),
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      margin: const EdgeInsets.only(top: 20),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: (MediaQuery.of(context).size.height * 0.5),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                product.title,
                                style: newsContext.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                product.desc,
                                textAlign: TextAlign.start,
                                style: newsContext.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
