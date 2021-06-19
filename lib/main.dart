import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'app_observer.dart';

const String DHCP_API_URL = "http://192.168.10.151:8080";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppObserver();
  runApp(const App());
}
