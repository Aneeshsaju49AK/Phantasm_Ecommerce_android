import 'package:phantasm/core/Export/export.dart';

class BestSellersSectionItemDescription extends StatelessWidget {
  const BestSellersSectionItemDescription({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 2.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              content: "BEST SELLERS",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: dotColorBlue,
              ),
            ),
            CustomText(
              content: "Sample 1",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            CustomText(
              content: "\$967.800",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            CustomText(
              content:
                  "Lorem ipsum dolor sit amet consectetur. Diam et augue est enim posuere fames. Placerat netus est at eget vivamus auctor id sit. Sodales aliquam malesuada sed pellentesque. Tortor eleifend faucibus lacus in lorem ipsum curabitur.",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: textColorGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}