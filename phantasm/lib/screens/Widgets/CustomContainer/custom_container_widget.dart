import 'package:phantasm/core/Export/export.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.customSize,
    required this.needWidth,
    required this.needheight,
    this.color,
    this.child,
  });

  final Size customSize;
  final Widget? child;
  final double needWidth;
  final double needheight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customSize.width / needWidth,
      height: customSize.height / needheight,
      color: color ?? primaryColor,
      child: child,
    );
  }
}
