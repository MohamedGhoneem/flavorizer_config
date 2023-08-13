import 'package:flavorizer_config/flavorizer_config.dart';
import 'package:flutter/material.dart';
import 'flavor_variables_model.dart';
import 'my_app.dart';


Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Production'
    ..iconPath = ''
    ..appId = ''
    ..baseUrl = ''
    ..description = '';
  FlavorConfig(title: 'Prod', flavor: Flavors.dev, variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}