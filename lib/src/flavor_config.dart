import 'package:flutter/cupertino.dart';

enum Flavors {
  prod,
  dev,
  stage,
}

class FlavorizerConfig {
  /// Internal instance of FlavorConfig
  static FlavorizerConfig? _instance;

  static FlavorizerConfig get instance {
    _instance ??= FlavorizerConfig();

    return _instance!;
  }

  String? appTitle;
  Map<String, dynamic>? variables;
  Flavors? flavor;
  Widget? child;

  /// Private constructor
  FlavorizerConfig._internal(
      this.appTitle, this.flavor, this.variables);

  /// Factory constructor
  factory FlavorizerConfig(
      {Key? key,
      String? title,
        Flavors? flavor,
        Map<String, dynamic>? variables,
      }) {
    _instance = FlavorizerConfig._internal(
      title,
      flavor,
      variables
    );

    return _instance!;
  }
}
