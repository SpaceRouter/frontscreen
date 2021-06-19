import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/home/cubit/Home_State.dart';
import 'package:opengate_frontscreen/pages/home/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
            List<String> interfacesText = [];
            state.interfaces
                .forEach((name, addr) => interfacesText.add("$name : $addr"));
            return Column(
              children: interfacesText.map((e) => Text(e)).toList(),
              crossAxisAlignment: CrossAxisAlignment.start,
            );
          }),
        ],
      ),
    );
  }
}
