import 'package:flavorizer_config/flavorizer_config.dart';
import 'package:flutter/material.dart';

import 'flavor_variables_model.dart';
import 'my_app.dart';

Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Development App'
    ..baseUrl = 'https//www.flavor.com'
    ..description = 'Development Flavor';
  FlavorizerConfig(
      appTitle: 'Development',
      flavor: Flavors.dev,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}
