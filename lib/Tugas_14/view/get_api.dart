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
  // List<Welcome> allusers;
  // List<Welcome> filteredUsers;
}

class _Tugas14APIState extends State<Tugas14API> {
  String query = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text(
        //   "Game Of Thrones",
        //   style: TextStyle(fontFamily: "Orbitron"),
        // ),
        title: Image.asset(
          "assets/images/logo_got-removebg-preview.png",
          width: 300,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.all(8),
        // actions: [
        //   // Image.asset(
        //   //   "assets/images/icon_westeros.webp",
        //   //   width: 25,
        //   //   fit: BoxFit.cover,
        //   // ),
        //   CircleAvatar(backgroundImage: AssetImage("assets/images/dragon.jpg")),
        // ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Cari karakter berdasarkan nama...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      query = value.toLowerCase();
                    });
                  },
                ),
              ),
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
                          return
                          // onTap: () {
                          //   context.push(page)
                          // },
                          Card(
                            color: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              onTap: () {
                                context.push(DetailPage(welcome: dataUser));
                              },
                              leading: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[900],
                                ),
                                clipBehavior: Clip.hardEdge,

                                child: Image.network(
                                  dataUser.imageUrl ?? "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // CircleAvatar(
                              //   radius: 30,
                              //   backgroundImage: NetworkImage(
                              //     dataUser.imageUrl ?? "",
                              //   ),
                              // ),
                              // Image.network(dataUser.imageUrl ?? ""),
                              title: Text(
                                dataUser.fullName ?? "",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "${dataUser.firstName} from ${dataUser.family}" ??
                                    "",
                                style: TextStyle(color: Colors.grey),
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
