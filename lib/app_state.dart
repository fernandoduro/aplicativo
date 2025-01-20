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
    _safeInit(() {
      _codigoSiteUsado =
          prefs.getBool('ff_codigoSiteUsado') ?? _codigoSiteUsado;
    });
    _safeInit(() {
      _dateCheckPlan = prefs.containsKey('ff_dateCheckPlan')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_dateCheckPlan')!)
          : _dateCheckPlan;
    });
    _safeInit(() {
      _existPlan = prefs.getBool('ff_existPlan') ?? _existPlan;
    });
    _safeInit(() {
      _firstReminder = prefs.getBool('ff_firstReminder') ?? _firstReminder;
    });
    _safeInit(() {
      _routerPage = prefs.getString('ff_routerPage') ?? _routerPage;
    });
    _safeInit(() {
      _FirstInsights = prefs.getBool('ff_FirstInsights') ?? _FirstInsights;
    });
    _safeInit(() {
      _firstRequest = prefs.getBool('ff_firstRequest') ?? _firstRequest;
    });
    _safeInit(() {
      _firstLoyault = prefs.getBool('ff_firstLoyault') ?? _firstLoyault;
    });
    _safeInit(() {
      _loyalt01 = prefs.getBool('ff_loyalt01') ?? _loyalt01;
    });
    _safeInit(() {
      _nameProfessional =
          prefs.getString('ff_nameProfessional') ?? _nameProfessional;
    });
    _safeInit(() {
      _firsSchedule = prefs.getBool('ff_firsSchedule') ?? _firsSchedule;
    });
    _safeInit(() {
      _configCompleted =
          prefs.getBool('ff_configCompleted') ?? _configCompleted;
    });
    _safeInit(() {
      _idUser = prefs.getInt('ff_idUser') ?? _idUser;
    });
    _safeInit(() {
      _FirstService = prefs.getBool('ff_FirstService') ?? _FirstService;
    });
    _safeInit(() {
      _FirstPackage = prefs.getBool('ff_FirstPackage') ?? _FirstPackage;
    });
    _safeInit(() {
      _appId = prefs.getString('ff_appId') ?? _appId;
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

  String _photoProfessionalEdit = '';
  String get photoProfessionalEdit => _photoProfessionalEdit;
  set photoProfessionalEdit(String value) {
    _photoProfessionalEdit = value;
  }

  bool _codigoSiteUsado = false;
  bool get codigoSiteUsado => _codigoSiteUsado;
  set codigoSiteUsado(bool value) {
    _codigoSiteUsado = value;
    prefs.setBool('ff_codigoSiteUsado', value);
  }

  dynamic _myinvitehistory;
  dynamic get myinvitehistory => _myinvitehistory;
  set myinvitehistory(dynamic value) {
    _myinvitehistory = value;
  }

  dynamic _myinvites = jsonDecode('{\"data\":[]}');
  dynamic get myinvites => _myinvites;
  set myinvites(dynamic value) {
    _myinvites = value;
  }

  DateTime? _dateCheckPlan;
  DateTime? get dateCheckPlan => _dateCheckPlan;
  set dateCheckPlan(DateTime? value) {
    _dateCheckPlan = value;
    value != null
        ? prefs.setInt('ff_dateCheckPlan', value.millisecondsSinceEpoch)
        : prefs.remove('ff_dateCheckPlan');
  }

  dynamic _historySite;
  dynamic get historySite => _historySite;
  set historySite(dynamic value) {
    _historySite = value;
  }

  int _forgotPasswordId = 0;
  int get forgotPasswordId => _forgotPasswordId;
  set forgotPasswordId(int value) {
    _forgotPasswordId = value;
  }

  String _forgotPasswordWhats = '';
  String get forgotPasswordWhats => _forgotPasswordWhats;
  set forgotPasswordWhats(String value) {
    _forgotPasswordWhats = value;
  }

  dynamic _packagesList = jsonDecode('{\"packages\":[]}');
  dynamic get packagesList => _packagesList;
  set packagesList(dynamic value) {
    _packagesList = value;
  }

  String _forgotPasswordCode = '';
  String get forgotPasswordCode => _forgotPasswordCode;
  set forgotPasswordCode(String value) {
    _forgotPasswordCode = value;
  }

  dynamic _hoursWork = jsonDecode(
      '{\"days\":[{\"dayWeek\":\"Segunda-feira\",\"hours\":[]},{\"dayWeek\":\"Terça-feira\",\"hours\":[]},{\"dayWeek\":\"Quarta-feira\",\"hours\":[]},{\"dayWeek\":\"Quinta-feira\",\"hours\":[]},{\"dayWeek\":\"Sexta-feira\",\"hours\":[]},{\"dayWeek\":\"Sábado\",\"hours\":[]},{\"dayWeek\":\"Domingo\",\"hours\":[]}]}');
  dynamic get hoursWork => _hoursWork;
  set hoursWork(dynamic value) {
    _hoursWork = value;
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
  }

  int _featureIdSelected = 0;
  int get featureIdSelected => _featureIdSelected;
  set featureIdSelected(int value) {
    _featureIdSelected = value;
  }

  bool _existPlan = false;
  bool get existPlan => _existPlan;
  set existPlan(bool value) {
    _existPlan = value;
    prefs.setBool('ff_existPlan', value);
  }

  dynamic _myClients = jsonDecode('{\"data\":[{}]}');
  dynamic get myClients => _myClients;
  set myClients(dynamic value) {
    _myClients = value;
  }

  bool _firstReminder = true;
  bool get firstReminder => _firstReminder;
  set firstReminder(bool value) {
    _firstReminder = value;
    prefs.setBool('ff_firstReminder', value);
  }

  String _routerPage = '';
  String get routerPage => _routerPage;
  set routerPage(String value) {
    _routerPage = value;
    prefs.setString('ff_routerPage', value);
  }

  bool _FirstInsights = true;
  bool get FirstInsights => _FirstInsights;
  set FirstInsights(bool value) {
    _FirstInsights = value;
    prefs.setBool('ff_FirstInsights', value);
  }

  bool _firstRequest = true;
  bool get firstRequest => _firstRequest;
  set firstRequest(bool value) {
    _firstRequest = value;
    prefs.setBool('ff_firstRequest', value);
  }

  bool _firstLoyault = true;
  bool get firstLoyault => _firstLoyault;
  set firstLoyault(bool value) {
    _firstLoyault = value;
    prefs.setBool('ff_firstLoyault', value);
  }

  bool _loyalt01 = false;
  bool get loyalt01 => _loyalt01;
  set loyalt01(bool value) {
    _loyalt01 = value;
    prefs.setBool('ff_loyalt01', value);
  }

  bool _loyalt02 = false;
  bool get loyalt02 => _loyalt02;
  set loyalt02(bool value) {
    _loyalt02 = value;
  }

  String _nameProfessional = '';
  String get nameProfessional => _nameProfessional;
  set nameProfessional(String value) {
    _nameProfessional = value;
    prefs.setString('ff_nameProfessional', value);
  }

  bool _firsSchedule = true;
  bool get firsSchedule => _firsSchedule;
  set firsSchedule(bool value) {
    _firsSchedule = value;
    prefs.setBool('ff_firsSchedule', value);
  }

  bool _configCompleted = false;
  bool get configCompleted => _configCompleted;
  set configCompleted(bool value) {
    _configCompleted = value;
    prefs.setBool('ff_configCompleted', value);
  }

  int _idUser = 0;
  int get idUser => _idUser;
  set idUser(int value) {
    _idUser = value;
    prefs.setInt('ff_idUser', value);
  }

  bool _FirstService = true;
  bool get FirstService => _FirstService;
  set FirstService(bool value) {
    _FirstService = value;
    prefs.setBool('ff_FirstService', value);
  }

  bool _FirstPackage = true;
  bool get FirstPackage => _FirstPackage;
  set FirstPackage(bool value) {
    _FirstPackage = value;
    prefs.setBool('ff_FirstPackage', value);
  }

  String _appId = '';
  String get appId => _appId;
  set appId(String value) {
    _appId = value;
    prefs.setString('ff_appId', value);
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
