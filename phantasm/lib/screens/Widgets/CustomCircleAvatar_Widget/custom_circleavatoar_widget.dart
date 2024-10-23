import 'package:phantasm/core/Export/export.dart';

class CustomCircleAvatoar extends StatelessWidget {
  const CustomCircleAvatoar({
    required this.radius,
    this.color,
    this.child,
    super.key,
  });
  final double radius;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color ?? Colors.blueAccent,
      child: child,
    );
  }
}