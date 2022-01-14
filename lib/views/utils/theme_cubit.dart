import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'contants.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_theme);

  static final _theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kAccentColor,
  );
}
