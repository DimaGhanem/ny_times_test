import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'contants.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_theme);

  static final _theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kAccentColor,
    iconTheme: IconThemeData(
      size: 25.0,
    ),
    textTheme: TextTheme(
      headline5: TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        height: 1.1,
      ),
      subtitle2: TextStyle(
        fontSize: 14.0,
        color: Color(0xFF7C7C7C),
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
