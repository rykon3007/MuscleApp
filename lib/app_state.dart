import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _PizzaIndex = prefs.getInt('ff_PizzaIndex') ?? _PizzaIndex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _PizzaIndex = 0;
  int get PizzaIndex => _PizzaIndex;
  set PizzaIndex(int _value) {
    _PizzaIndex = _value;
    prefs.setInt('ff_PizzaIndex', _value);
  }

  bool _Optionsedit = false;
  bool get Optionsedit => _Optionsedit;
  set Optionsedit(bool _value) {
    _Optionsedit = _value;
  }

  bool _AddedtoCart = false;
  bool get AddedtoCart => _AddedtoCart;
  set AddedtoCart(bool _value) {
    _AddedtoCart = _value;
  }

  bool _AddedtoFavorite = false;
  bool get AddedtoFavorite => _AddedtoFavorite;
  set AddedtoFavorite(bool _value) {
    _AddedtoFavorite = _value;
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
