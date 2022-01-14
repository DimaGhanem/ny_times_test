import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'views/home/widget/home_screen.dart';
import 'views/utils/theme_cubit.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}
