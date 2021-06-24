import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opengate_frontscreen/pages/clock/view/clock_page.dart';
import 'package:opengate_frontscreen/pages/interfaces/view/interfaces_page.dart';
import 'package:opengate_frontscreen/pages/victor.dart';
import 'package:opengate_frontscreen/pages/wifi/view/wifi_page.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "OpenGate",
                    style: Theme.of(context).textTheme.headline5?.merge(
                          TextStyle(
                            fontSize: 40,
                          ),
                        ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context, VictorPage.route()),
                  child: Image.asset(
                    "assets/esieespace_grey.png",
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                _HomeCard(
                  name: "Wifi",
                  onTap: () => Navigator.push(context, WifiPage.route()),
                  icon: Icons.wifi,
                ),
                _HomeCard(
                  name: "Interfaces",
                  onTap: () => Navigator.push(context, InterfacesPage.route()),
                  icon: Icons.settings_ethernet,
                ),
                _HomeCard(
                  name: "Docker",
                  onTap: () => Navigator.push(context, InterfacesPage.route()),
                  icon: FontAwesomeIcons.docker,
                ),
                _HomeCard(
                  name: "Date",
                  onTap: () => Navigator.push(context, InterfacesPage.route()),
                  icon: Icons.calendar_today,
                ),
                _HomeCard(
                  name: "Alimentation",
                  onTap: () => Navigator.push(context, InterfacesPage.route()),
                  icon: Icons.power_settings_new,
                ),
                _HomeCard(
                  name: "Veille",
                  onTap: () => Navigator.push(context, ClockPage.route()),
                  icon: FontAwesomeIcons.moon,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Wrap(
              children: [
                Text(" Axel COCHET -"),
                Text(" Louis DESPLANCHE -"),
                Text(" Victor HUGER -"),
                Text(" Théo LEFEVRE -"),
                Text(" Sebastien WARY "),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  final String name;
  final GestureTapCallback onTap;
  final IconData? icon;

  const _HomeCard({
    Key? key,
    required this.name,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: Colors.grey[800],
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
