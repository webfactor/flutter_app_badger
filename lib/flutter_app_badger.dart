import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppBadger {
  static const MethodChannel _channel =
      const MethodChannel('g123k/flutter_app_badger');

  static Future<void> updateBadgeCount(int count) {
    return _channel.invokeMethod('updateBadgeCount', {"count": count});
  }


  static Future<void> updateNotificationAndBadgeData(int count, String title, String body) {
    return _channel.invokeMethod('updateBadgeCount', {"count": count, "title": title, "body": body});

  }

  static Future<void> removeBadge() {
    return _channel.invokeMethod('removeBadge');
  }

  static Future<bool> isAppBadgeSupported() async {
    bool? appBadgeSupported = await _channel.invokeMethod('isAppBadgeSupported');
    return appBadgeSupported ?? false;
  }
}
