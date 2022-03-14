import 'dart:io';

import 'package:flutter/material.dart';
import 'package:opengate_frontscreen/pages/alim/view/wait_page.dart';
import 'package:opengate_frontscreen/pages/home/view/home_page.dart';
import 'package:opengate_frontscreen/pages/model/page_base.dart';

class AlimView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageBase(
      title: "Alimentation",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Wrap(alignment: WrapAlignment.center, children: [
              HomeCard(
                name: "Eteindre",
                onTap: () {
                  Process.run("/usr/bin/sudo", ["shutdown", "now"]);
                  Navigator.push(context, WaitPage.route());
                },
                icon: Icons.power_off,
              ),
              HomeCard(
                name: "Redémarrer",
                onTap: () async {
                  Process.run("/usr/bin/sudo", ["reboot"]);
                  Navigator.push(context, WaitPage.route());
                },
                icon: Icons.refresh,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
