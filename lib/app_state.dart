import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _pesquisaOn = false;
  bool get pesquisaOn => _pesquisaOn;
  set pesquisaOn(bool _value) {
    _pesquisaOn = _value;
  }

  bool _pesquisaVendasOn = false;
  bool get pesquisaVendasOn => _pesquisaVendasOn;
  set pesquisaVendasOn(bool _value) {
    _pesquisaVendasOn = _value;
  }

  bool _pesquisaVendasClientesOn = false;
  bool get pesquisaVendasClientesOn => _pesquisaVendasClientesOn;
  set pesquisaVendasClientesOn(bool _value) {
    _pesquisaVendasClientesOn = _value;
  }

  bool _checkInternetConnection = false;
  bool get checkInternetConnection => _checkInternetConnection;
  set checkInternetConnection(bool _value) {
    _checkInternetConnection = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
