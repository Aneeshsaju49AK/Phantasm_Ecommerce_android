import 'package:phantasm/core/Export/export.dart';

class CustomDotsInSplashScreen extends StatelessWidget {
  const CustomDotsInSplashScreen({
    required this.xAlign,
    required this.yAlign,
    this.color,
    super.key,
  });
  final double xAlign;
  final double yAlign;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(xAlign, yAlign),
      child: CustomCircleAvatoar(
        radius: 6,
        color: color,
      ),
    );
  }
}
