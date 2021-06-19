import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pages/home/view/home_page.dart';
import 'pages/splash/view/splash_page.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView();
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenGate',
      theme: theme,
      navigatorKey: _navigatorKey,
      home: HomePage(),
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
