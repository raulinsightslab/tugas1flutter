import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tugas1flutter/Tugas_11/model/user.dart';
import 'package:tugas1flutter/Tugas_11/sqflite/db.dart';
import 'package:tugas1flutter/Tugas_7/login_page.dart';
import 'package:tugas1flutter/Tugas_8/botnavbar.dart';
import 'package:tugas1flutter/extension/navigation.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const id = "/register";

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;
  bool _obscurePassword = true;
  bool isVisibility = false;

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
                        "Create Your Account",
                        style: TextStyle(
                          fontSize: 30,
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
                        "Sign up to explore the ocean of opportunities.",
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
                    //buat full name
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text('Full Name', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: _namecontroller,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Color(0xFF1A2238),
                        hint: Text(
                          "Enter Your full name",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    //buat email (sharknet id)
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text('Email', style: TextStyle(color: Colors.white)),
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
                          "Enter Your Email",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    //buat password
                    Padding(padding: EdgeInsetsGeometry.only(top: 20)),
                    Text('Password', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
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
                    //tombol register
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
                            final name = _namecontroller.text.trim();
                            final email = _emailController.text.trim();
                            final password = _passwordController.text;

                            if (email.isEmpty) {
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
                            } else if (password.length != 6) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Password Invalid"),
                                    content: Text(
                                      "Password harus mengandung 6 karakter.",
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
                            } else {
                              registerUser();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Register Successful')),
                              );
                              context.pushNamed(LoginPage.id);
                            }
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //buatgarisannya
                    // Row(
                    //   children: [
                    //     Expanded(child: Divider(color: Colors.white24)),
                    //     Padding(
                    //       padding: EdgeInsets.symmetric(horizontal: 8),
                    //       child: Text(
                    //         'Or continue with',
                    //         style: TextStyle(color: Colors.white54),
                    //       ),
                    //     ),
                    //     Expanded(child: Divider(color: Colors.white24)),
                    //   ],
                    // ),
                    // const SizedBox(height: 20),

                    // //buat login sosmed
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     ElevatedButton(
                    //       style: ButtonStyle(
                    //         backgroundColor: WidgetStatePropertyAll(
                    //           Colors.black,
                    //         ),
                    //       ),
                    //       onPressed: () {},
                    //       child: _socialButton('assets/images/icon_google.png'),
                    //     ),
                    //     ElevatedButton(
                    //       style: ButtonStyle(
                    //         backgroundColor: WidgetStatePropertyAll(
                    //           Colors.black,
                    //         ),
                    //       ),
                    //       onPressed: () {},
                    //       child: _socialButton('assets/images/icon_apple.png'),
                    //     ),
                    //     ElevatedButton(
                    //       style: ButtonStyle(
                    //         backgroundColor: WidgetStatePropertyAll(
                    //           Colors.black,
                    //         ),
                    //       ),
                    //       onPressed: () {},
                    //       child: _socialButton(
                    //         'assets/images/icon_twitter.png',
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          context.pushNamed(LoginPage.id);
                        },
                        child: Text(
                          "Already have an account? login here",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void registerUser() async {
    isLoading = true;
    setState(() {});
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final name = _namecontroller.text.trim();
    if (email.isEmpty || password.isEmpty || name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email, Password, dan Nama tidak boleh kosong"),
        ),
      );
      isLoading = false;

      return;
    }
    final user = User(email: email, password: password, name: name);
    await DbHelper.registerUser(user);
    Future.delayed(const Duration(seconds: 1)).then((value) {
      isLoading = false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Pendaftaran berhasil")));
    });
    setState(() {});
    isLoading = false;
  }

  // Widget _socialButton(String assetPath) {
  //   return Container(
  //     width: 60,
  //     height: 60,
  //     padding: EdgeInsets.all(12),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Image.asset(
  //       assetPath,
  //       errorBuilder: (context, error, stackTrace) {
  //         return const Icon(Icons.error, color: Colors.red);
  //       },
  //     ),
  //   );
  // }
}
