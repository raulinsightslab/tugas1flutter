import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  String name = "Hello"; 
  bool showName = false;
  bool showLike = false;
  String deskripsi = "Am i worth to be loved?";
  bool showDesk = false;
  int count = 0;
  bool showKotakTeks = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Interactive Page',
          style: TextStyle(
            fontFamily: "Bitcount",
            fontSize: 32,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count--;
          });
        },
        child: Icon(Icons.minimize),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              // 1. ElevatedButton
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showName = !showName;
                  });
                },
                child: Text(
                  showName ? "Hide" : "Show Me",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Orbitron",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              
              if (showName)
              Column (children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: "Orbitron",
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),   
                SizedBox(height: 20), 
                Image.asset(
                'assets/images/image_3.jpg', 
                width: 90,
                height: 100,
                fit: BoxFit.cover,
              ),
              ]
              ),

              SizedBox(height: 20),

              // 2. LikeButton
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showLike = !showLike;
                      });
                    },
                    icon: Icon(Icons.favorite),
                    color: showLike ? Colors.red : Colors.grey,
                  ),

                  if (showLike)
                    Text(
                      "Thank You for loving me",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: "Orbitron",
                      ),
                    ),
                  SizedBox(height: 20),
                ],
              ),

              //3. Text Button
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showDesk = !showDesk;
                      });
                    },
                    child: const Text(
                      "In full",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: "Orbitron",
                      ),
                    ),
                  ),
                  if (showDesk)
                    Text(
                      "Am i worth to be loved?",
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  SizedBox(height: 20),
                ],
              ),

              //4. Add
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                          print(count);
                        },
                        child: Text(
                          "Plus",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Orbitron",
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(count.toString(), style: TextStyle(fontSize: 18)),
                ],
              ),

              //5. Inkwell
              InkWell(
                onTap: () {
                  // Saat kotak ditekan
                  setState(() {
                    showKotakTeks = !showKotakTeks; 
                  });
                  print("Kotak disentuh"); 
                },
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blueAccent,
                  alignment: Alignment.center,
                  child: Text(
                    "Touch here",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "Orbitron",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              if (showKotakTeks)
                Text(
                  "Kotak disentuh!",
                  style: TextStyle(color: Colors.black, fontFamily: "Orbitron"),
                ),

              GestureDetector(
                onTap: () {
                  print("Ditekan Sekali");
                },
                onDoubleTap: () {
                  print("Ditekan Dua Kali");
                },

                onLongPress: () {
                  print("Tahan Lama");
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height: 100,
                  width: 200,
                  child: Text(
                    "Touch Me",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "Orbitron",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
