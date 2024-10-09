import 'package:ecommerce_app/view/base_page/base_page.dart';
import 'package:ecommerce_app/view/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(myApp());


class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Gem Store",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orangeAccent,
        ),
        primarySwatch: Colors.orange,
      ),
      home: BasePage(),
    );
  }
}
