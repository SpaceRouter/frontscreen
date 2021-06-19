import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/repositories/dhcp/dhcp.dart';

import 'interfaces_state.dart';

class InterfacesCubit extends Cubit<InterfacesState> {
  InterfacesCubit(this._dhcpRepo) : super(InterfacesState()) {
    refresh();
    timer = Timer.periodic(Duration(seconds: 10), (Timer t) => refresh());
  }

  final DHCP _dhcpRepo;
  late Timer timer;

  Future<void> refresh() async {
    getInterfaces();
    //getLeases();
  }

  Future<void> getInterfaces() async {
    final interfaces = await NetworkInterface.list();

    Map<String, String> interfacesMap = {};

    for (final interface in interfaces) {
      interfacesMap[interface.name] =
          interface.addresses.map((addr) => addr.address).join(" ");
    }

    emit(state.copyWith(interfaces: interfacesMap));
  }

  Future<void> getLeases() async {
    var leases = await _dhcpRepo.getLeases();

    emit(state.copyWith(
      staticLeases: leases.staticLeases,
      dynamicLeases: leases.dynamicLeases,
    ));
  }
}
