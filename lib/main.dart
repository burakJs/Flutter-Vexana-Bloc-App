import 'package:bloc_training/feature/home/model_view/user_cubit.dart';
import 'package:bloc_training/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserCubit()..getAllUsers(),
        child: HomeView(),
      ),
    );
  }
}
