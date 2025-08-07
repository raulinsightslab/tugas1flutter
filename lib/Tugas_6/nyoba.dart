import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Coba extends StatefulWidget {
  const Coba({super.key});

  @override
  State<Coba> createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header+animasi
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Color(0xFF0A0F24),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Text(
                        "Dive Into SharkNet",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "Orbitron",
                          shadows: [
                            Shadow(
                              color: Color.fromRGBO(0, 0, 0, 1.5),
                              offset: Offset(2, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Make Waves. Explore More.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          fontFamily: "orbitron",
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 0,
                  right: 0,
                  child: Lottie.asset(
                    'assets/lottie/Cute Shark Tapping.json',
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //buat username
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text('Username', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Color(0xFF1A2238),
                        hint: Text(
                          "Enter Your SharkNet ID",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    //buat password
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text('Password', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        hint: Text(
                          "Enter Your Password",
                          style: TextStyle(color: Colors.white70),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    //tombol login
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                          ),
                          onPressed: () {
                            final email = _emailController.text.trim();
                            final password = _passwordController.text;

                            if (email.isEmpty) {
                              // ✅ Kasus 1: Email kosong
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Invalid Email"),
                                    content: Text(
                                      "Please enter a valid email.",
                                    ),
                                    actions: [
                                      TextButton(
                                        child: Text("OK"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else if (password != '123456') {
                              // ✅ Kasus 2: Password salah
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Invalid Email or Incorrect Password",
                                    ),
                                    content: Text("Please try again."),
                                    actions: [
                                      TextButton(
                                        child: Text("OK"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              // ✅ Kasus 3: Login berhasil
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Login Succesful')),
                              );
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //buatgarisannya
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.white24)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.white24)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    //buat login sosmed
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _socialButton('assets/images/icon_google.png'),
                        _socialButton('assets/images/icon_apple.png'),
                        _socialButton('assets/images/icon_twitter.png'),
                      ],
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialButton(String assetPath) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        assetPath,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error, color: Colors.red);
        },
      ),
    );
  }
}
