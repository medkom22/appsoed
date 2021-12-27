import 'package:appsoed/model/data/faculty_data.dart';
import 'package:appsoed/page/detail_faculty.dart';
import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class FacultyPage extends StatelessWidget {
  final String title = "Tilik Fakultas";

  const FacultyPage({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 30),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (context, index) {
            var dataFaculty = dataFakultas[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          DetailFacultyPage(
                        data: dataFaculty,
                        title: title,
                      ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              SlideTransition(
                        position:
                            Tween(begin: const Offset(1, 0), end: Offset.zero)
                                .animate(animation),
                        child: child,
                      ),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.school,
                  color: Colors.amber,
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.amber,
                  size: 30,
                ),
                title: Text(
                  dataFaculty.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textAppbarFAQ.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            );
          },
          itemCount: dataFakultas.length,
        ),
      ),
    );
  }
}
