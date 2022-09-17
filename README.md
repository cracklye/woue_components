<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

Change

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# WOUE (Write Once Use Everywhere) Components
The WOUE components are a set of components that wrap components for each of the different design systems.  This allows you to create custom components once that can be used across different design systems without changing code.

## Features

Currently the following components are available: 
|Component|Material|Cupertino|FluentUI|MacOS|Yaru|
|-|-|-|-|-|-|
|WoueButton|RaisedButton|Cop|Button|Button|RaisedButton|
|WoueIconButton||||||
|WoueDropdown||||||
|WoueSlider||||||
|WoueTextField||||||


## Getting started
Add the package to your pubspec.yaml or run the following command to add the dependancy
``` 
flutter pub get woue_components
```
import the package into your code:
``` 
import 'package:woue_components/woue_components.dart
```

## Usage

``` 
Woue.init() // INitialise using the default method 
// or 
Woue.init(DesignFramework.material); // Initialise with the specified design framework (if you wnat to use material on mac for example)
```
