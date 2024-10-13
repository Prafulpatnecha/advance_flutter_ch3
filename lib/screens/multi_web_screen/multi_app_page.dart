import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controller/search_controller.dart';
import '../../utils/globle_list.dart';

class MultiAppPage extends StatelessWidget {
  const MultiAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    SearchFiledController searchController = Get.put(SearchFiledController());
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: TextFormField(
                onFieldSubmitted: (value) {
                  searchController.searchMethod(value);
                  //todo method define
                  if(value.isNotEmpty)
                    {
                      Get.toNamed("/web");//todo page will be define...
                    }
                  // log("--------->message");
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  label: Text("Search"),
                ),
              ),
            ).marginSymmetric(vertical: 20),
            StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (context, snapshot) {
                try {
                  if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                      snapshot.data!.contains(ConnectivityResult.wifi)) {
                      return Wrap(
                        children: [
                          ...List.generate(
                            webAppList.length,
                                (index) =>
                                GestureDetector(
                                  onTap: () {
                                    selectIndex = index;
                                    searchController.searchString.value='';
                                    Get.toNamed("/web");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.transparent,
                                    child: FadeInImage(
                                        placeholder:
                                        const AssetImage(
                                            "assets/image/img_1.png"),
                                        image:
                                        NetworkImage(webAppList[index]['image'])),
                                  ).paddingAll(15),
                                ),
                          ),
                        ],
                      );
                  }
                  else {
                    return Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Center(
                              child: Lottie.asset(
                                  "assets/image/circular_animation.json")),
                          const Align(
                              alignment: Alignment(0, -0.5),
                              child: Text(
                                "No internet connection",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )),
                          Align(
                              alignment: const Alignment(0, 0.5),
                              child: Text(
                                "Please check your connection \nagain, or connect to Wi-Fi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.orange.withOpacity(0.5)),
                              )),
                        ],
                      ),
                    );
                  }
                }catch(e)
                {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
