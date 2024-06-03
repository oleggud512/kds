import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobile_client/src/app.dart';
import 'package:mobile_client/src/core/di/get_it.dart';
import 'package:mobile_client/src/core/socket/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  
  await NotificationService.init();
  await NotificationService.requestPermissions();

  runApp(const MyApp());
}