import 'package:shared_preferences/shared_preferences.dart';

final class AppSharedPreferences {
  /// Singleton class
  AppSharedPreferences._();

  static final AppSharedPreferences _instance = AppSharedPreferences._();

  late SharedPreferences _sharedPreferences;

  factory AppSharedPreferences() {
    return _instance;
  }

  Future<SharedPreferences> init() async =>
      _sharedPreferences = await SharedPreferences.getInstance();


  Future<bool> remove({
    required String key,
  }) async =>
      await _sharedPreferences.remove(key);

  Future<bool> setBool({
    required String key,
    required bool value,
  }) async =>
      await _sharedPreferences.setBool(key, value);

  bool? getBool({
    required String key,
  }) =>
      _sharedPreferences.getBool(key);

  Future<bool> setString({
    required String key,
    required String value,
  }) async =>
      await _sharedPreferences.setString(key, value);

  String? getString({
    required String key,
  }) =>
      _sharedPreferences.getString(key);
}
