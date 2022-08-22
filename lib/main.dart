import 'package:flutter/material.dart';
import 'package:session11/pages/chat.dart';
import 'package:session11/pages/homePage.dart';
import 'package:session11/pages/people.dart';
void main() =>
  runApp(const MyApp());
  class MyApp extends StatelessWidget {
    const MyApp ({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "flutter 2 part",
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          "home":(context) => const HomePage(),
          "page one":(context) => const Chat(),
          "page two":(context) => const People(),
          
        },
      );
    }
  }
  
