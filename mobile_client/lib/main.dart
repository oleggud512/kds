import 'package:flutter/material.dart';
import 'package:mobile_client/src/app.dart';
import 'package:mobile_client/src/core/di/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}