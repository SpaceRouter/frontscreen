import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opengate_frontscreen/pages/model/page_base.dart';
import 'package:opengate_frontscreen/pages/wifi/cubit/wifi_cubit.dart';
import 'package:opengate_frontscreen/pages/wifi/cubit/wifi_state.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WifiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageBase(
      title: "Wifi",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<WifiCubit, WifiState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wifi : \n" + state.wifiName,
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                      QrImage(
                        data: "WIFI:T:WPA;S:" +
                            state.wifiName +
                            ";P:" +
                            state.wifiPassword +
                            ";H:;",
                        version: QrVersions.auto,
                        size: 230,
                      )
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
