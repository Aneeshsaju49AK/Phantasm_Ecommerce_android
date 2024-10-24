import 'package:phantasm/core/Export/export.dart';


class MyCartAmountSection extends StatelessWidget {
  const MyCartAmountSection({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomContainerWithBoxRadius(
        customSize: customSize,
        needWidth: 1,
        needheight: 3.7,
        color: buttomColor,
        radius: 20,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AmountSectionMyCart(
                customSize: customSize,
                title: "SubTotal",
                value: "\$1250.00",
              ),
              AmountSectionMyCart(
                customSize: customSize,
                title: "Shipping",
                value: "\$40.90",
              ),
              CustomText(
                content:
                    "------------------------------------------------------",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: textColorGrey,
                ),
              ),
              AmountSectionMyCart(
                customSize: customSize,
                title: "Total Cost",
                value: "\$1690.99",
              ),
              const CustomSizedBox(
                height: 5,
              ),
              CustomContainerWithBoxDecoration(
                needWidth: 1.1,
                needheight: 13,
                customSize: customSize,
                content: "CheckOut",
              ),
            ],
          ),
        ),
      ),
    );
  }
}