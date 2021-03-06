import 'package:equatable/equatable.dart';
import 'package:opengate_frontscreen/repositories/dhcp/models/Lease.dart';

class InterfacesState extends Equatable {
  final List<Lease> dynamicLeases;
  final List<Lease> staticLeases;
  final Map<String, String> interfaces;

  InterfacesState({
    this.dynamicLeases = const [],
    this.staticLeases = const [],
    this.interfaces = const {},
  });

  @override
  List<Object?> get props => [
        ...dynamicLeases,
        ...staticLeases,
        ...interfaces.keys,
        ...interfaces.values,
      ];

  InterfacesState copyWith({
    List<Lease>? dynamicLeases,
    List<Lease>? staticLeases,
    Map<String, String>? interfaces,
  }) {
    return InterfacesState(
      dynamicLeases: dynamicLeases ?? this.dynamicLeases,
      staticLeases: staticLeases ?? this.staticLeases,
      interfaces: interfaces ?? this.interfaces,
    );
  }
}
