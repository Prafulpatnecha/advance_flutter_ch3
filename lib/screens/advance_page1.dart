import 'package:advance_flutter_ch3/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/get_controller.dart';

class AdvancePage1 extends StatelessWidget {
  const AdvancePage1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textDate = TextEditingController();
    GetControlling getControlling = Get.put(GetControlling());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // if (getControlling.pageChange.value == 1)
            TextFormField(
              cursorColor: Colors.green,
              keyboardType: TextInputType.datetime,
              controller: textDate,
              maxLength: 10,
              decoration: InputDecoration(
                label: Text("Date"),
                suffixIcon: IconButton(
                  onPressed: () async {
                    try {
                      DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1850),
                        lastDate: DateTime.now(),
                      );
                      textDate.text = "${date!.month}/${date.day}/${date.year}";
                    } catch (e) {
                      Get.log(e.toString());
                    }
                  },
                  icon: Icon(Icons.calendar_today),
                ),
                helper: Text("MM/DD/YYYY"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ).paddingAll(15),
          // else if (getControlling.pageChange.value == 0)
            CupertinoDialogAction(
              child: Text("Dialogs"),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => Theme(
                    data: ThemeSet.light,
                    child: CupertinoAlertDialog(
                      // setThemeColor: Colors.red,
                      title: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone ringtone",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                                  Divider(
                                    color: Colors.black,
                                  ),
                          Container(
                            height: 170,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioMenuButton(
                                      value: true,
                                      groupValue: false,
                                      onChanged: (value) {},
                                      child: Text("None")),
                                  RadioMenuButton(
                                    value: true,
                                    groupValue: true,
                                    onChanged: (value) {},
                                    child: Text("Callisto"),
                                  ),
                                  RadioMenuButton(
                                      value: true,
                                      groupValue: false,
                                      onChanged: (value) {},
                                      child: Text("Ganymede")),
                                  RadioMenuButton(
                                      value: true,
                                      groupValue: false,
                                      onChanged: (value) {},
                                      child: Text("Luna")),
                                ],
                              ),
                            ),
                          ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text("Cancel",style: TextStyle(color: Color(0xffAC3817)),)),
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text("OK",style: TextStyle(color: Color(0xffAC3817)),)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              isDestructiveAction: true,
            ),
            CupertinoDialogAction(child: Text("Time Picker",style: TextStyle(color: Colors.blue),),onPressed: () {
              showTimePicker(context: context, initialTime: TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute));
            },),
            CupertinoDialogAction(child: Text("Connectivity",style: TextStyle(color: Colors.blue),),onPressed: () {
              Get.toNamed("/conn_plus");
            },),
          CupertinoTimerPicker(onTimerDurationChanged: (value) {

          },)
          // else if(getControlling.pageChange.value == 0)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder:(context) {
          return CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (DateTime newDate) {

            },
          );
        },);
      },child: Icon(Icons.access_time_filled_rounded),backgroundColor: Colors.grey.shade400,),
    );
  }
}
