import 'package:equatable/equatable.dart';

import 'Lease.dart';

class DHCPData extends Equatable {
  final List<Lease> staticLeases;
  final List<Lease> dynamicLeases;

  DHCPData(this.staticLeases, this.dynamicLeases);

  @override
  List<Object?> get props => [staticLeases, dynamicLeases];
}
