import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/alim/view/alim_view.dart';
import 'package:opengate_frontscreen/pages/wifi/cubit/wifi_cubit.dart';

class AlimPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => AlimPage(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AlimView(),
    );
  }
}
