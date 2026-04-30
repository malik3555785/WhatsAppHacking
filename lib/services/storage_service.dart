import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _scanHistoryKey = 'scan_history';
  static const String _settingsKey = 'settings';

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save data
  Future<void> saveScanHistory(String data) async {
    await _prefs.setString(_scanHistoryKey, data);
  }

  Future<void> saveSettings(String key, String value) async {
    await _prefs.setString('$_settingsKey:$key', value);
  }

  // Retrieve data
  String? getScanHistory() {
    return _prefs.getString(_scanHistoryKey);
  }

  String? getSetting(String key) {
    return _prefs.getString('$_settingsKey:$key');
  }

  // Clear data
  Future<void> clearScanHistory() async {
    await _prefs.remove(_scanHistoryKey);
  }

  Future<void> clearAllData() async {
    await _prefs.clear();
  }
}
