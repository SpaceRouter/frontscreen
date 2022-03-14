import 'package:flutter/material.dart';

class WaitPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => WaitPage(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A bientôt !",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Theme.of(context).textTheme.headline1?.color,
            ),
          ],
        ),
      ),
    );
  }
}
