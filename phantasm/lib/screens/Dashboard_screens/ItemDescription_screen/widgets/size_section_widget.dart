import 'package:phantasm/core/Export/export.dart';

class SizeSectionItemDescription extends StatelessWidget {
  const SizeSectionItemDescription({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 7,
      child: Column(
        children: [
          CustomPadding(
            left: 10,
            child: Row(
              children: [
                CustomText(
                  content: "Size",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                const Spacer(),
                CustomText(
                  content: "EU",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColorGrey,
                  ),
                ),
                const CustomSizedBox(
                  width: 10,
                ),
                CustomText(
                  content: "US",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColorGrey,
                  ),
                ),
                const CustomSizedBox(
                  width: 10,
                ),
                CustomText(
                  content: "UK",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textColorGrey,
                  ),
                ),
                const CustomSizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          CustomContainer(
            customSize: customSize,
            needWidth: 1,
            needheight: 11,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomCircleAvatoar(
                    color: buttomColor,
                    radius: 25,
                    child: CustomText(
                      content: shoesSize[index],
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: textColorGrey,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}