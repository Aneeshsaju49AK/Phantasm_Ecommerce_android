import 'package:phantasm/core/Export/export.dart';

class AmountSectionMyCart extends StatelessWidget {
  const AmountSectionMyCart({
    super.key,
    required this.customSize,
    required this.title,
    required this.value,
  });

  final Size customSize;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 25,
      color: buttomColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            content: title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          CustomText(
            content: value,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
