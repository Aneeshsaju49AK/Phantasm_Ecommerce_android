import 'package:phantasm/core/Export/export.dart';

class MyCartHeaderWithBackButtonWidget extends StatelessWidget {
  const MyCartHeaderWithBackButtonWidget({
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
        children: [
          const CustomSizedBox(
            width: 20,
          ),
        const  BackButtonCommon(),
          const CustomSizedBox(
            width: 80,
          ),
          CustomText(
            content: "MyCart",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class BackButtonCommon extends StatelessWidget {
  const BackButtonCommon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatoar(
      radius: 25,
      color: buttomColor,
      child: Icon(
        Icons.arrow_back_ios_sharp,
        color: textColor,
        size: 15,
      ),
    );
  }
}