import 'package:flutter/material.dart';
import 'package:travel_app/views/pages/DetailPage/detail_page.dart';
import 'package:travel_app/views/pages/authSignIn/sign_in.dart';
import 'package:travel_app/views/pages/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignInView(),
      },
    );
  }
}
