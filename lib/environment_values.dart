import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'HML';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _apiURL = data['apiURL'];
      _ApiUrlPlan = data['ApiUrlPlan'];
      _ApiUrlChangePlan = data['ApiUrlChangePlan'];
      _ChangeDataPlan = data['ChangeDataPlan'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _apiURL = '';
  String get apiURL => _apiURL;

  String _ApiUrlPlan = '';
  String get ApiUrlPlan => _ApiUrlPlan;

  String _ApiUrlChangePlan = '';
  String get ApiUrlChangePlan => _ApiUrlChangePlan;

  String _ChangeDataPlan = '';
  String get ChangeDataPlan => _ChangeDataPlan;
}
