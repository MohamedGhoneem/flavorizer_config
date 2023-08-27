import 'package:flavorizer_config/flavorizer_config.dart';
import 'package:flutter/material.dart';
import 'flavor_variables_model.dart';
import 'my_app.dart';

Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Stage App'
    ..iconPath = 'assets/images/icon.png'
    ..appId = 'com.flavor.app'
    ..baseUrl = 'https//www.flavor.com'
    ..description = 'Stage Flavor';
  FlavorizerConfig(
      title: 'Stage',
      flavor: Flavors.stage,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}
