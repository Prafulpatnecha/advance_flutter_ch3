import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeSet {
  static ThemeData light = ThemeData(
    radioTheme: RadioThemeData(
      // overlayColor: WidgetStatePropertyAll(Colors.black),
      // mouseCursor: WidgetStatePropertyAll(MouseCursor.defer)
      fillColor: WidgetStatePropertyAll(Color(0xff847271)),
    ),
    timePickerTheme: TimePickerThemeData(
      backgroundColor: Colors.grey.shade200,
      confirmButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.green.shade900)),
      cancelButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.green.shade900)),
      hourMinuteColor: Colors.green.shade200,
      dayPeriodColor: Color(0xffBCEBEB),
      dayPeriodTextColor: Colors.black,
      dialBackgroundColor: Colors.grey.shade300,
      dialHandColor: Colors.green.shade700,
      inputDecorationTheme: InputDecorationTheme(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),fillColor: Colors.green.shade200,hoverColor: Colors.green),

    ),
    cupertinoOverrideTheme: MaterialBasedCupertinoThemeData(materialTheme: ThemeData(
      dialogBackgroundColor: Colors.red,
      dialogTheme: DialogTheme(backgroundColor: Colors.red,surfaceTintColor: Colors.red),
      useMaterial3: true,
    )),
    scaffoldBackgroundColor: Colors.green.shade50,
      datePickerTheme: DatePickerThemeData(
        dividerColor: Colors.green,
        todayForegroundColor: const WidgetStatePropertyAll(Colors.green),
        backgroundColor: Colors.green.shade50,
        rangePickerHeaderForegroundColor: Colors.green,
        rangePickerSurfaceTintColor: Colors.green,
        rangePickerShape: const OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
        rangePickerShadowColor: Colors.green,
        rangePickerBackgroundColor: Colors.green,
        rangeSelectionOverlayColor: const WidgetStatePropertyAll(Colors.green),
        rangeSelectionBackgroundColor: Colors.green,
        rangePickerHeaderBackgroundColor: Colors.green,
        todayBorder: const BorderSide(color: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green))),
        cancelButtonStyle: const ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.green),
        ),
        confirmButtonStyle: const ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.green),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green.shade900),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green.shade900),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green.shade900),
        ),
        labelStyle: TextStyle(color: Colors.green.shade900),
      ));
}
