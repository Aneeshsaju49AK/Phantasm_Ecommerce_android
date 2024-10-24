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

class CustomContainerWithBoxRadius extends StatelessWidget {
  const CustomContainerWithBoxRadius({
    super.key,
    required this.customSize,
    required this.needWidth,
    required this.needheight,
    required this.radius,
    this.color,
    this.child,
  });

  final Size customSize;
  final Widget? child;
  final double needWidth;
  final double needheight;
  final Color? color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: customSize.width / needWidth,
      height: customSize.height / needheight,
      
      decoration: BoxDecoration(
        color: color ?? primaryColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
