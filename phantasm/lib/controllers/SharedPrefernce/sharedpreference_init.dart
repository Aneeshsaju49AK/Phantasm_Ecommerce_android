import 'package:shared_preferences/shared_preferences.dart';

Future<void> emailToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('emailToken', "admin@signIn");
}

Future<String?> emailGetToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('emailToken');
}

Future<void> tokenPassWord() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('passwordToken', "12345678");
}

Future<String?> tokenPassWordGet() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('passwordToken');
}
