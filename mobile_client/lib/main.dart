import 'package:flutter/material.dart';
import 'package:mobile_client/src/app.dart';
import 'package:mobile_client/src/core/di/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}