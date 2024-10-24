import 'package:phantasm/core/Export/export.dart';

class HeaderSectionHomePageScreenWidget extends StatelessWidget {
  const HeaderSectionHomePageScreenWidget({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCircleAvatoar(
            color: buttomColor,
            radius: 23,
            child: Icon(
              Icons.media_bluetooth_off_rounded,
              color: textColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                content: "Store location",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: textColorGrey,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 231, 81, 71),
                    size: 18,
                  ),
                  CustomText(
                    content: "Mondolibug, Sylbet",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          CustomCircleAvatoar(
            radius: 23,
            color: buttomColor,
            child: Icon(
              Icons.shopping_bag,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
