import 'package:flutter/material.dart';
import 'package:opengate_frontscreen/pages/home/view/home_page.dart';

class PageBase extends StatelessWidget {
  final String title;
  final Widget child;

  const PageBase({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline2?.merge(TextStyle(
                        height: 0.8,
                        fontSize: 50,
                      )),
                  overflow: TextOverflow.fade,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: () => Navigator.push(context, HomePage.route()),
                icon: Icon(Icons.home),
                color: Colors.grey[800],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: child,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
