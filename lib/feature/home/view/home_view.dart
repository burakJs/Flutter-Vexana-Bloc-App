import 'package:bloc_training/product/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../model_view/user_cubit.dart';
import '../model_view/user_state.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final StringConstants _stringConstants = StringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            return Center(child: Text('Initial Text', style: context.textTheme.headline3));
          } else if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserSuccess) {
            return ListView.builder(
              itemCount: (state.model.data ?? []).length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        state.model.data?[index].avatar ?? 'https://reqres.in/img/faces/7-image.jpg',
                      ),
                    ),
                    title: Text(state.model.data?[index].firstName ?? 'Default Name'),
                  ),
                );
              },
            );
          } else {
            return Center(
                child: Text(
              (state as UserError).error ?? 'Default Error',
              style: context.textTheme.headline3,
            ));
          }
        },
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        _stringConstants.appBarTitle,
        style: context.textTheme.headline5?.copyWith(
          color: context.colorScheme.onBackground,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
