import 'package:flutter/material.dart';


class CompanyTaskPage extends StatelessWidget {
  const CompanyTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        leading: IconButton(onPressed: () {

        }, icon: Icon(Icons.dehaze_rounded)),
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
                
              )
            )
          ),
        ),
      ),
      body: Container(
        // child: ,
      ),
    );
  }
}
