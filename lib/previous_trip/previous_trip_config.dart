import 'previous_trip_storage.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'previous_trip_api.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
class PreviousTripConfig {
  static String assetImagePath = 'images/';

  static DateTime parseUtcDate(String utc) {
    return DateTime.parse(utc);
  }

  static DateTime dateTimeFromTimestamp(int time) {
    return DateTime.fromMillisecondsSinceEpoch(time);
  }

  static int timestampFromDate(DateTime date) {
    return date.millisecondsSinceEpoch;
  }

  static Future<String> getApplicationVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  static String getSystemLanguage() {
    final Locale systemLocale = WidgetsBinding.instance.window.locale;
    return "${systemLocale.languageCode}-${systemLocale.scriptCode}";
  }

  static Future<String> getSystemTimeZone() async {
    try {
      final timezone = await FlutterNativeTimezone.getLocalTimezone();
      return timezone;
    } catch (e) {
      return 'America/New_York';
    }
  }

  static String getSystemLocale() {
    final Locale systemLocale = WidgetsBinding.instance.window.locale;
    return systemLocale.countryCode ?? "EN";
  }

  static String getKeyboardLanguage() {
    final Locale systemLocale = WidgetsBinding.instance.window.locale;
    return "${systemLocale.languageCode}-${systemLocale.scriptCode},en-${systemLocale.countryCode},emoji";
  }

  static Future<String?> getDeviceIdentifier() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    try {
      final storageService = PreviousTripStorage();
      String id = await storageService.readData(PreviousTripApi.tripID) ?? "";
      if (id.isEmpty) {
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
          String identifier = iosInfo.identifierForVendor ?? "";
          storageService.saveData(PreviousTripApi.tripID, identifier);
          return identifier;
        }
      } else {
        return id;
      }
    } catch (e) {
      print('Error getting device ID: $e');
    }
    return "";
  }

  static Future<String?> getOperatingSystemVersion() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (kIsWeb) {
        WebBrowserInfo webInfo = await deviceInfoPlugin.webBrowserInfo;
        return webInfo.userAgent;
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        return androidInfo.version.release;
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        return iosInfo.systemVersion;
      }
    } catch (e) {}
    return "";
  }

  static Future<Map> getDeviceInformation() async {
    Map map = Map();
    map["app"] = PreviousTripApi.tripID;
    map["appVersion"] = await getApplicationVersion();
    map["deviceOs"] = 0;
    map["deviceOsVersion"] = await getOperatingSystemVersion();
    map["deviceToken"] = await getDeviceIdentifier();
    return map;
  }

  static Future<Map> getLocalizationData() async {
    Map map = Map();
    map["osKbLan"] = getKeyboardLanguage();
    map["osNaLan"] = getSystemLanguage();
    map["osNaReg"] = getSystemLocale();
    map["osNaTiCo"] = timestampFromDate(DateTime.now());
    map["osNaTi"] = await getSystemTimeZone();
    return map;
  }

  static Future<bool> shouldStartTrip() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool start = prefs.getBool(PreviousTripApi.tripID) ?? false;
    if (PreviousTripConfig.timestampFromDate(DateTime.now()) >
        PreviousTripApi.tripTimeout || start == true) {
      return true;
    } else {
      return false;
    }
  }
}
