import 'package:weatherapp/bloc/internet/internet_state.dart';

abstract class InternetEvent {}

class ListenConnectionEvent extends InternetEvent {}

class ConnectionChangedEvent extends InternetEvent {
  InternetState connection;
  ConnectionChangedEvent(this.connection);
}
