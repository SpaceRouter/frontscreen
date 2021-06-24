import 'package:flutter_bloc/flutter_bloc.dart';

import 'wifi_state.dart';

class WifiCubit extends Cubit<WifiState> {
  WifiCubit()
      : super(WifiState(
          wifiName: "OPENGATE",
          wifiPassword: "OPENGATE@pqn4T%29",
        ));
}
