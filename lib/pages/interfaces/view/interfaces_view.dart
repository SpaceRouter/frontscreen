import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/interfaces/cubit/interfaces_cubit.dart';
import 'package:opengate_frontscreen/pages/interfaces/cubit/interfaces_state.dart';
import 'package:opengate_frontscreen/pages/model/page_base.dart';

class InterfacesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageBase(
      title: "Interfaces",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<InterfacesCubit, InterfacesState>(
              builder: (context, state) {
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
