import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/home/cubit/home_cubit.dart';
import 'package:opengate_frontscreen/pages/home/view/home_view.dart';
import 'package:opengate_frontscreen/repositories/dhcp/dhcp.dart';

import '../../../main.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => DHCP(DHCP_API_URL),
        child: BlocProvider(
          create: (context) => HomeCubit(RepositoryProvider.of<DHCP>(context)),
          child: HomeView(),
        ),
      ),
    );
  }
}
