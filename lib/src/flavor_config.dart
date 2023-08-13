import 'package:flutter/cupertino.dart';

enum Flavors {
  prod,
  dev,
  stage,
}

class FlavorConfig {
  /// Internal instance of FlavorConfig
  static FlavorConfig? _instance;

  static FlavorConfig get instance {
    _instance ??= FlavorConfig();

    return _instance!;
  }

  String? appTitle;
  Map<String, dynamic>? variables;
  Flavors? flavor;
  Widget? child;

  /// Private constructor
  FlavorConfig._internal(
      this.appTitle, this.flavor, this.variables);

  /// Factory constructor
  factory FlavorConfig(
      {Key? key,
      String? title,
        Flavors? flavor,
        Map<String, dynamic>? variables,
      }) {
    _instance = FlavorConfig._internal(
      title,
      flavor,
      variables
    );

    return _instance!;
  }
}
