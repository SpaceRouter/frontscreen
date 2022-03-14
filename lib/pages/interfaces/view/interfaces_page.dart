import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/interfaces/cubit/interfaces_cubit.dart';
import 'package:opengate_frontscreen/repositories/dhcp/dhcp.dart';

import '../../../main.dart';
import 'interfaces_view.dart';

class InterfacesPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => InterfacesPage(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => DHCP(DHCP_API_URL),
        child: BlocProvider(
          create: (context) =>
              InterfacesCubit(RepositoryProvider.of<DHCP>(context)),
          child: InterfacesView(),
        ),
      ),
    );
  }
}
