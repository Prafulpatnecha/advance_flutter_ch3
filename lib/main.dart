import 'package:advance_flutter_ch3/screens/advance_page1.dart';
import 'package:advance_flutter_ch3/screens/connectivity_plus_screen/connectivity_plus_page.dart';
import 'package:advance_flutter_ch3/screens/multi_web_screen/multi_app_page.dart';
import 'package:advance_flutter_ch3/screens/multi_web_screen/web_show_page.dart';
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
      getPages: [
        GetPage(name: "/", page: () => const AdvancePage1()),
        GetPage(name: "/conn_plus", page: () => const ConnectivityPlusPage()),
        GetPage(name: "/multi", page: () => const MultiAppPage()),
        GetPage(name: "/web", page: () => const WebShowPage()),
        // GetPage(name: "/company_task", page: () => const CompanyTaskPage()),
      ],
    );
  }
}
