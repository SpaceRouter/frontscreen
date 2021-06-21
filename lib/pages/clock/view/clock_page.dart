import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => ClockPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime current = DateTime.now();
    Stream<DateTime> timer = Stream.periodic(Duration(seconds: 1), (i) {
      current = current.add(Duration(seconds: 1));
      return current;
    });

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: StreamBuilder<DateTime>(
                stream: timer,
                builder: (context, value) {
                  return Text(
                    DateFormat("HH:mm").format(value.data ?? DateTime.now()),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  );
                },
              ),
            ),
          ),
          Image.asset(
            "assets/esieespace_blue.png",
            height: 60,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
