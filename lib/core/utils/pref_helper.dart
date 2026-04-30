import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static const String token_key = 'auth_token';

  static Future<void> saveToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(token_key, token);
  }

  static Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(token_key);
  }

  static Future<void> removeToken() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(token_key);
  }
}
