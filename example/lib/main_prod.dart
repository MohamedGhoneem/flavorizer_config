import 'package:flavorizer_config/flavorizer_config.dart';
import 'package:flutter/material.dart';
import 'flavor_variables_model.dart';
import 'my_app.dart';


Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Production App'
    ..baseUrl = 'https//www.flavor.com'
    ..description = 'Production Flavor';
  FlavorizerConfig(
      appTitle: 'Production',
      flavor: Flavors.prod,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}