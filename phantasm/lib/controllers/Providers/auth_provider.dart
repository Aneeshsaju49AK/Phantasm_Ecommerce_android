

import 'package:phantasm/core/Export/export.dart';

class AuthProvider with ChangeNotifier {
  

  Future<void> validateCredentials(
      BuildContext context, String email, String password) async {
        emailToken();
        tokenPassWord();
    final savedEmail = await emailGetToken();
    final savedPassword = await tokenPassWordGet();
    if (email == savedEmail && password == savedPassword) {
      // Navigate to HomeDashboardScreen if credentials match
      navigationToScreenReplacement(
        context,
        const HomeDashboardScreen(),
      );
    } else {
      // Show error message if credentials do not match
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid email or password"),
        ),
      );
    }
  }
}
