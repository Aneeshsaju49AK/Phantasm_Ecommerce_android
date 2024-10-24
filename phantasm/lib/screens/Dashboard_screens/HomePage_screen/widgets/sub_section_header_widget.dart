import 'package:phantasm/core/Export/export.dart';

class SubSectionHeaderHomePageWidget extends StatelessWidget {
  const SubSectionHeaderHomePageWidget({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        const CustomSizedBox(
            width: 20,
          ),
          CustomText(
            content: "Popular Shoes",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        const Spacer(),
          CustomText(
            content: "See all",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: dotColorBlue,
            ),
          ),
        const CustomSizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}