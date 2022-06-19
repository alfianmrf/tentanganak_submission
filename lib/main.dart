import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constant/constant.dart';
import 'presentation/pages/pages.dart';
import 'presentation/blocs/blocs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FruitsBloc>(
          create: (BuildContext context) => FruitsBloc()..add(const LoadFruits()),
        ),
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        theme: ThemeData(
          primarySwatch: AppColors.primarySwatch,
          fontFamily: AppStrings.fontFamily,
        ),
        home: const HomePage(),
      ),
    );
  }
}
