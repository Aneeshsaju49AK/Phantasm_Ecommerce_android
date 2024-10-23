import 'package:phantasm/core/Export/export.dart';

void navigationToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void navigationToPop(BuildContext context){
  Navigator.pop(context);

}