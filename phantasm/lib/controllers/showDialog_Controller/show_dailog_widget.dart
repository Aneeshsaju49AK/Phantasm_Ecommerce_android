import 'package:phantasm/core/Export/export.dart';

void showSignOutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: dotColor,
        title:  Text("Sign Out",style: TextStyle(color: textColor),),
        content:  Text("Are you sure you want to sign out?",style: TextStyle(color: textColor),),
        actions: [
          TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
          ),
          TextButton(
            child: const Text("Yes"),
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              navigationToScreenReplacement(context,const HomeLoginScreen()); // Navigate to sign-in page
            },
          ),
        ],
      );
    },
  );
}
