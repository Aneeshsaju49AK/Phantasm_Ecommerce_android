import 'package:phantasm/core/Export/export.dart';

class CustomContainerWithBoxDecoration extends StatelessWidget {
  const CustomContainerWithBoxDecoration({
    required this.needWidth,
    required this.needheight,
    required this.customSize,
    required this.content,
    this.color,
    super.key,
  });
  final double needheight;
  final double needWidth;
  final Size customSize;
  final String content;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customSize.width / needWidth,
      height: customSize.height / needheight,
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: CustomText(
          content: content,
          style: GoogleFonts.poppins(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class CustomcontainerWithBoxdecorationWithImage extends StatelessWidget {
  const CustomcontainerWithBoxdecorationWithImage({
    required this.needWidth,
    required this.needheight,
    required this.customSize,
    required this.content,
    required this.image,
    this.color,
    super.key,
  });
  final double needheight;
  final double needWidth;
  final Size customSize;
  final String content;
  final Color? color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customSize.width / needWidth,
      height: customSize.height / needheight,
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              scale: 2,
            ),
            const CustomSizedBox(
              width: 10,
            ),
            CustomText(
              content: content,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
