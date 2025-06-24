import 'package:shared_preferences/shared_preferences.dart';

const String _profileImageKey = 'profileImagePath';

Future<void> saveProfileImagePath(String path) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_profileImageKey, path);
}

Future<String> getProfileImagePath() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(_profileImageKey) ?? 'assets/img/avatars/avatar_1.png';
}