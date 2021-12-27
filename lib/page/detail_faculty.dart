import 'package:appsoed/model/data/faculty_data.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class DetailFacultyPage extends StatelessWidget {
  final FacultyData data;
  final String title;
  const DetailFacultyPage({Key? key, required this.data, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: textAppbarFAQ,
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      "assets/fakultas/${data.imageUrl}",
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
                        height: (MediaQuery.of(context).size.height * 0.4),
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
                              data.name,
                              style: newsContext.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Text(
                              data.desc,
                              textAlign: TextAlign.start,
                              style: newsContext.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 12),
                              height: 200,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  List datas = data.major;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: datas.map((e) {
                                      return Text(
                                        e,
                                        style: newsContext.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      );
                                    }).toList(),
                                  );
                                },
                                itemCount: 1,
                              ),
                            ),
                            Text(
                              "Alamat : " + data.address,
                              style: newsContext.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
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
        ));
  }
}
