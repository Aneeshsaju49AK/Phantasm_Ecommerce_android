import 'package:phantasm/core/Export/export.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding({
    this.left,
    this.right,
    this.bottom,
    this.top,
    this.child,
    super.key,
  });

  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
      child: child,
    );
  }
}