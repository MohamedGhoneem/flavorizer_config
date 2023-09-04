import 'package:flutter/cupertino.dart';

enum Flavors {
  prod,
  dev,
  stage,
}

class FlavorizerConfig {
  static FlavorizerConfig? _instance;

  String? appTitle;
  Map<String, dynamic>? variables;
  Flavors? flavor;
  Widget? child;

  FlavorizerConfig._internal({
    this.appTitle,
    this.flavor,
    this.variables,
  });

  factory FlavorizerConfig({
    Key? key,
    String? appTitle,
    Flavors? flavor,
    Map<String, dynamic>? variables,
    Widget? child,
  }) {
    _instance ??= FlavorizerConfig._internal(
      appTitle: appTitle,
      flavor: flavor,
      variables: variables,
    );

    _instance!.appTitle = appTitle;
    _instance!.flavor = flavor;
    _instance!.variables = variables;
    _instance!.child = child;

    return _instance!;
  }

  static FlavorizerConfig get instance {
    assert(_instance != null,
    'FlavorizerConfig.instance has not been initialized.');

    return _instance!;
  }
}