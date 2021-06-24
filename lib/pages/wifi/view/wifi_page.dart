import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/wifi/cubit/wifi_cubit.dart';
import 'wifi_view.dart';

class WifiPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => WifiPage(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => WifiCubit(),
        child: WifiView(),
      ),
    );
  }
}
