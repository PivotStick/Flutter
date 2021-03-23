import 'package:epicture/pages/Home.dart';
import 'package:epicture/pages/PostPage.dart';
import 'package:epicture/pages/Profil.dart';
import 'package:epicture/utils/PageNav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Epicture",
        theme: ThemeData(
          fontFamily: "Nunito",
          scaffoldBackgroundColor: const Color(0xFFE63946),
          backgroundColor: const Color(0xFFF1FAEE),
          primaryColor: const Color(0xFFE63946),
          cardColor: const Color(0xFF1D3557),
          primarySwatch: MaterialColor(0xFFE63946, {
            50: const Color(0xFFE63946),
            100: const Color(0xFFE63946),
            200: const Color(0xFFE63946),
            300: const Color(0xFFE63946),
            400: const Color(0xFFE63946),
            500: const Color(0xFFE63946),
            600: const Color(0xFFE63946),
            700: const Color(0xFFE63946),
            800: const Color(0xFFE63946),
            900: const Color(0xFFE63946),
          }),
        ),
        home: Root(),
      );
}

class Root extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Root();
}

class _Root extends State<Root> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          controller: PageNav.controller,
          children: [
            Home(),
            Profil(),
          ],
        ),
      );
}
