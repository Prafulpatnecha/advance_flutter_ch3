import 'package:advance_flutter_ch3/screens/advance_page1.dart';
import 'package:advance_flutter_ch3/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeSet.light,
      getPages: [GetPage(name: "/", page: () => const AdvancePage1())],
    );
  }
}
