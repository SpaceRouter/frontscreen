import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/DHCPData.dart';
import 'models/Lease.dart';

class DHCP {
  final String url;

  DHCP(this.url);

  Future<DHCPData> getLeases() async {
    var response = await http.get(Uri.parse(url + "/data.json"));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var staticLeases = (jsonData["fixed"] as List<dynamic>)
          .map((lease) => Lease.fromJson(lease))
          .toList();
      var dynamicLeases = (jsonData["staging"] as List<dynamic>)
          .map((lease) => Lease.fromJson(lease))
          .toList();
      return DHCPData(staticLeases, dynamicLeases);
    } else {
      throw Exception('Failed to load DHCP leases');
    }
  }

  Future<void> removeStaticLease(String hostname, String mac) async {
    var payload = {
      "hostname": hostname,
      "mac": mac,
    };

    var response = await http.post(
      Uri.parse(url + "/deletefix"),
      headers: {"content-type": "application/json"},
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<void> addStaticLease(String hostname, String mac, String ip) async {
    var payload = {
      "hostname": hostname,
      "mac": mac,
      "ip": ip,
    };

    var response = await http.post(
      Uri.parse(url + "/addfix"),
      headers: {"content-type": "application/json"},
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
    } else {
      throw Exception('Failed to load album');
    }
  }
}
