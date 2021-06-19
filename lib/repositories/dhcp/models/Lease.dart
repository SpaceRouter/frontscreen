import 'package:equatable/equatable.dart';

class Lease extends Equatable {
  final String ip;
  final DateTime? starts;
  final DateTime? ends;
  final bool binding;
  final String mac;
  final String hostname;

  Lease({
    required this.ip,
    this.starts,
    this.ends,
    this.binding = true,
    required this.mac,
    required this.hostname,
  });

  @override
  List<Object?> get props => [ip, starts, ends, binding, mac, hostname];

  static Lease fromJson(Map<String, dynamic> json) {
    return Lease(
      ip: json["ip"],
      mac: json["mac"],
      hostname: json["hostname"],
      binding: json["binding"] == "fixed",
      starts: DateTime.tryParse(json["starts"] ?? "") ?? DateTime.now(),
      ends: DateTime.tryParse(json["ends"] ?? "") ?? DateTime.now(),
    );
  }
}
