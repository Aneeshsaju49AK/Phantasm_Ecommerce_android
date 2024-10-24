import 'package:phantasm/core/Export/export.dart';

class BestChoiceSectionHomepageWidget extends StatelessWidget {
  const BestChoiceSectionHomepageWidget({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithBoxRadius(
      customSize: customSize,
      needWidth: 1.1,
      needheight: 7,
      color: buttomColor,
      radius: 20,
      child: Row(
        children: [
          CustomContainer(
            customSize: customSize,
            needWidth: 2.5,
            needheight: 7,
            color: buttomColor,
            child: CustomPadding(
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    content: "BEST CHOICE",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: dotColorBlue,
                    ),
                  ),
                  CustomText(
                    content: "Sample 3",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                  CustomText(
                    content: "\$849.60",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        const Spacer(),
          CustomContainer(
            customSize: customSize,
            needWidth: 2.2,
            needheight: 7,
            color: buttomColor,
            child: Image.asset("assets/images/shoe.png"),
          ),
        ],
      ),
    );
  }
}