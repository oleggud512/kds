import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static bool _isInitialized = false;
  static bool get isInitialized => _isInitialized;

  static Future<void> init() async {
    const androidInit = AndroidInitializationSettings('mipmap/ic_launcher');
    const iosInit = DarwinInitializationSettings();
    const initNtf = InitializationSettings(android: androidInit, iOS: iosInit);
    await flutterLocalNotificationsPlugin.initialize(initNtf);
    _isInitialized = true;
  }

  static Future<void> requestPermissions() async {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  static showNotification({required String title, required String body}) async {
    AndroidNotificationDetails det = const AndroidNotificationDetails(
      'channelId1',
      'channel1',
      importance: Importance.max,
      priority: Priority.max,
    );

    var not = NotificationDetails(
      android: det,
      iOS: const DarwinNotificationDetails(),
    );
    await flutterLocalNotificationsPlugin.show(0, title, body, not);
  }
}