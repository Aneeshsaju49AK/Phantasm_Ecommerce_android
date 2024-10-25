import 'package:phantasm/core/Export/export.dart';

class PriceSectionItemDescription extends StatelessWidget {
  const PriceSectionItemDescription({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 6,
      child: Row(
        children: [
          CustomPadding(
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  content: "Price",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColorGrey,
                  ),
                ),
                CustomText(
                  content: "\$849.69",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColorGrey,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomContainerWithBoxDecoration(
            needWidth: 2,
            needheight: 12,
            customSize: customSize,
            content: "Add To Cart",
            color: dotColorBlue,
          ),
          const CustomSizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}