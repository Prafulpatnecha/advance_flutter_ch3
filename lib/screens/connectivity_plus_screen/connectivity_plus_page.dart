import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConnectivityPlusPage extends StatelessWidget {
  const ConnectivityPlusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Check Your Device Connection",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
          color: Colors.white,
          child: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              try {
                if (snapshot.hasError) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                    snapshot.data!.contains(ConnectivityResult.wifi)) {
                  return Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Image.network(
                              "https://cdn.dribbble.com/users/795597/screenshots/11391032/media/544afc504427fb3e74abd14a6955fc98.gif"),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(0, -0.5),
                        child: Text(
                          "Your Network Is Perfect Work",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Center(
                            child: Lottie.asset(
                                "assets/json/Animation - 1728626112092.json")),
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
              } catch (e) {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ));
  }
}
