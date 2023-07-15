import 'package:shared_preferences/shared_preferences.dart';

Future setToken(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("token", value);
}

Future getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("Token");
}

Future removeToken() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("Token");
}

Future setName(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("name", value);
}

Future getName() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("name");
}

Future removeName() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("name");
}

Future setId(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("id", value);
}

Future getId() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("id");
}

Future removeId() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("id");
}