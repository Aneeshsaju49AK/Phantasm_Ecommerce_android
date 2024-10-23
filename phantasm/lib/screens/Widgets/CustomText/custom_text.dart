import 'package:phantasm/core/Export/export.dart';

class CustomText extends StatelessWidget {
  final String content;
  final TextStyle? style; // Custom text style (GoogleFonts, etc.)

  const CustomText({
    super.key,
    required this.content,
    this.style, // Optional, to override custom styles
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: style ??
          GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: textColorGrey,
          ),
    );
  }
}
