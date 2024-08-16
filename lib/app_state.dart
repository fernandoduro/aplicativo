import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _firstAccess = prefs.getBool('ff_firstAccess') ?? _firstAccess;
    });
    _safeInit(() {
      _existSite = prefs.getBool('ff_existSite') ?? _existSite;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _firstAccess = true;
  bool get firstAccess => _firstAccess;
  set firstAccess(bool value) {
    _firstAccess = value;
    prefs.setBool('ff_firstAccess', value);
  }

  bool _existSite = false;
  bool get existSite => _existSite;
  set existSite(bool value) {
    _existSite = value;
    prefs.setBool('ff_existSite', value);
  }

  dynamic _CategoriesJson = jsonDecode('[{\"id\":\"\",\"name\":\"\"}]');
  dynamic get CategoriesJson => _CategoriesJson;
  set CategoriesJson(dynamic value) {
    _CategoriesJson = value;
  }

  bool _imageUploaded = false;
  bool get imageUploaded => _imageUploaded;
  set imageUploaded(bool value) {
    _imageUploaded = value;
  }

  dynamic _servicesJson = jsonDecode('[{\"id\":\"\",\"label\":\"\"}]');
  dynamic get servicesJson => _servicesJson;
  set servicesJson(dynamic value) {
    _servicesJson = value;
  }

  dynamic _servicesJsonFull = jsonDecode('[{\"id\":\"\",\"label\":\"\"}]');
  dynamic get servicesJsonFull => _servicesJsonFull;
  set servicesJsonFull(dynamic value) {
    _servicesJsonFull = value;
  }

  dynamic _serviceJsonAux = jsonDecode('[{\"id\":\"\",\"label\":\"\"}]');
  dynamic get serviceJsonAux => _serviceJsonAux;
  set serviceJsonAux(dynamic value) {
    _serviceJsonAux = value;
  }

  String _base64 = '';
  String get base64 => _base64;
  set base64(String value) {
    _base64 = value;
  }

  dynamic _listJson = jsonDecode('[]');
  dynamic get listJson => _listJson;
  set listJson(dynamic value) {
    _listJson = value;
  }

  dynamic _listJsonAux = jsonDecode('[\"Outra Opção\"]');
  dynamic get listJsonAux => _listJsonAux;
  set listJsonAux(dynamic value) {
    _listJsonAux = value;
  }

  dynamic _dataSite;
  dynamic get dataSite => _dataSite;
  set dataSite(dynamic value) {
    _dataSite = value;
  }

  String _logoEdit = '';
  String get logoEdit => _logoEdit;
  set logoEdit(String value) {
    _logoEdit = value;
  }

  dynamic _allDomains = jsonDecode('{\"sugestions\":[]}');
  dynamic get allDomains => _allDomains;
  set allDomains(dynamic value) {
    _allDomains = value;
  }
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
