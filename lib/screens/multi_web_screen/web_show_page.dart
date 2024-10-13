import 'package:advance_flutter_ch3/utils/globle_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../controller/search_controller.dart';


class WebShowPage extends StatelessWidget {
  const WebShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    SearchFiledController searchController = Get.put(SearchFiledController());
    if (searchController.searchString.value == '') {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                    url: WebUri(webAppList[selectIndex]['link'])),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.back();
        }, child: const Icon(Icons.arrow_back, color: Colors.black, size: 30,)),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            // Expanded(
            //   flex: 0,
            //   child: ListTile(
            //   title: TextFormField(
            //     onFieldSubmitted: (value) {
            //       searchController.searchMethod(value);
            //       //todo method define
            //       // Get.toNamed("/web");//todo page will be define...
            //       // log("--------->message");
            //     },
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(borderSide: BorderSide()),
            //       label: Text("Search"),
            //     ),
            //   ),
            // ).marginSymmetric(vertical: 20),),
            Expanded(
              child: Container(
                color: Colors.white,
                height: double.infinity,
                width: double.infinity,
                child: GetBuilder<SearchFiledController>(
                  builder:(controller) => InAppWebView(
                      initialUrlRequest: URLRequest(
                          url: WebUri(searchController.searchString.value)),
                    ),
                ),
                ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.back();
        }, child: const Icon(Icons.arrow_back, color: Colors.black, size: 30,)),
      );
    }
  }
}