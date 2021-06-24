import 'package:equatable/equatable.dart';

class WifiState extends Equatable {
  final String wifiName;
  final String wifiPassword;

  WifiState({
    required this.wifiName,
    required this.wifiPassword,
  });

  @override
  List<Object?> get props => [
        wifiName,
        wifiPassword,
      ];

  WifiState copyWith({
    String? wifiName,
    String? wifiPassword,
  }) {
    return WifiState(
      wifiName: wifiName ?? this.wifiName,
      wifiPassword: wifiPassword ?? this.wifiPassword,
    );
  }
}
