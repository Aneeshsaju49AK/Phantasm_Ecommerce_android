import 'package:phantasm/core/Export/export.dart';

class ItemDescriptionHeaderSection extends StatelessWidget {
  const ItemDescriptionHeaderSection({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 9,
      child: Row(
        children: [
          const CustomSizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              navigationToPop(context);
            },
            child: const BackButtonCommon()),
          const Spacer(),
          CustomText(
            content: "Men's Shoes",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          const Spacer(),
          const CommonBagButton(),
          const CustomSizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
