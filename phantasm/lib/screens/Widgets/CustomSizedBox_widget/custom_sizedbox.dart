import 'package:phantasm/core/Export/export.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    this.height,
    this.width,
    super.key,
  });
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }
}