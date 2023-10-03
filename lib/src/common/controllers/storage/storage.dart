import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences $storage;

enum StorageKeys {
  isDark("isDark"),
  locale("locale");

  final String key;

  const StorageKeys(this.key);
}
