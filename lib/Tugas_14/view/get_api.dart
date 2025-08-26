import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_14/api/get_user.dart';
import 'package:tugas1flutter/Tugas_14/model/user_model.dart';
import 'package:tugas1flutter/Tugas_14/view/details.dart';
import 'package:tugas1flutter/extension/navigation.dart';

class Tugas14API extends StatefulWidget {
  const Tugas14API({super.key});
  static const id = "/page_API";

  @override
  State<Tugas14API> createState() => _Tugas14APIState();
}

class _Tugas14APIState extends State<Tugas14API> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game Of Thrones"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<Welcome>>(
                future: getUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final users = snapshot.data as List<Welcome>;
                    return Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: users.length,
                        itemBuilder: (BuildContext context, int index) {
                          final dataUser = users[index];
                          return Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              leading: Image.network(dataUser.imageUrl ?? ""),
                              title: Text(dataUser.fullName ?? ""),
                              subtitle: Text(
                                "${dataUser.firstName} ${dataUser.lastName}" ??
                                    "",
                              ),
                            ),
                          );
                        },
                      ),
                    );
                    //   onTap: () {
                    //     context.pushNamed(DetailPage.id);
                    //   },
                    // );
                  } else {
                    return Text("Gagal Memuat");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
