import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/bloc/internet/internet_event.dart';
import 'package:weatherapp/bloc/internet/internet_state.dart';
import 'package:weatherapp/constants/enums.dart';

@singleton
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? _subscription;

  InternetBloc() : super(InternetLoading()) {
    _subscription =
        Connectivity().onConnectivityChanged.listen((connectivityResult) {
      // ignore: avoid_print
      print(connectivityResult);
      if (connectivityResult == ConnectivityResult.none) {
        add(ConnectionChangedEvent(InternetDisconnected()));
      } else if (connectivityResult == ConnectivityResult.wifi) {
        add(ConnectionChangedEvent(
            InternetConnected(connectionType: ConnectionType.wiFi)));
      } else if (connectivityResult == ConnectivityResult.mobile) {
        add(ConnectionChangedEvent(
            InternetConnected(connectionType: ConnectionType.mobile)));
      } else {
        add(ConnectionChangedEvent(
            InternetConnected(connectionType: ConnectionType.ethernet)));
      }
    });
  }

  InternetState get initialState => InternetLoading();

  @override
  Stream<InternetState> mapEventToState(InternetEvent event) async* {
    if (event is ConnectionChangedEvent) {
      yield event.connection;
    } else {
      yield InternetDisconnected();
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
