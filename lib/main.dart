import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:tugas1flutter/Tugas_11/views/register.dart';
import 'package:tugas1flutter/Tugas_14/view/details.dart';
import 'package:tugas1flutter/Tugas_14/view/get_api.dart';
import 'package:tugas1flutter/Tugas_15/views/login_page.dart';
import 'package:tugas1flutter/Tugas_7/login_page.dart';
import 'package:tugas1flutter/Tugas_8/botnavbar.dart';

void main() {
  initializeDateFormatting("id_ID");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
        datePickerTheme: DatePickerThemeData(backgroundColor: Colors.white),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 3, 3),
        ),
      ),
      // initialRoute: "/login",
      // routes: {
      //   "/login": (context) => LoginPage(),
      //   RegisterPage.id: (context) => RegisterPage(),
      //   Botbar.id: (context) => Botbar(),

      // DashboardPage.id: (context) => const DashboardPage(),
      // CheckboxPage.id: (context) => const CheckboxPage(),
      // SwitchPage.id: (context) => const SwitchPage(),
      // DropdownPage.id: (context) => const DropdownPage(),
      // DatePickerPage.id: (context) => const DatePickerPage(),
      // TimePickerPage.id: (context) => const TimePickerPage(),
      // AboutPage.id: (context) => const AboutPage(),
      // },
      // initialRoute: "/page_API",
      // routes: {
      //   "/page_API": (context) => Tugas14API(),
      //   DetailPage.id: (context) => DetailPage(),
      // },
      home: LoginPage1(),
    );
  }
}
