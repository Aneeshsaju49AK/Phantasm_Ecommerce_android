import 'package:phantasm/core/Export/export.dart';

void navigationToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
void navigationToScreenReplacement(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void navigationToPop(BuildContext context){
  Navigator.pop(context);

}