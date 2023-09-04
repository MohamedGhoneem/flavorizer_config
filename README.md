
## Getting started

With `null-safety`

```dart
      dependencies:
          flavorizer_config: ^0.0.4
```

Add the dependency to your project and start using **flavorizer_config** #

Importing the package #
```dart
import 'package:flavorizer_config/flavorizer_config.dart';
```

## Usage

To use this plugin, add flavorizer_config as a dependency in your pubspec.yaml file.

## Example

Here are an example that show you how to use this plugin.

## main.dart
```dart
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Development App'
    ..baseUrl = 'https//www.flavor.com'
    ..description = 'Production Flavor';
  FlavorizerConfig(
      appTitle: 'Development',
      flavor: Flavors.dev,
      variables: flavorVariablesModel.toJson());
```



## Improve

Help me by reporting bugs, **submit new ideas** for features or anything else that you want to share.

- Just [write an issue](https://github.com/MohamedGhoneem/flavorizer_config/issues) on GitHub. ✏️
- And don't forget to hit the **like button** for this package ✌️

## More

Check out my other useful packages on [pub.dev](https://pub.dev/publishers/ghoneem.com/packages)

