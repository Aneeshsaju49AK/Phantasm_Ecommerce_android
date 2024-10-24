import 'package:phantasm/core/Export/export.dart';

class MyCartListviewBuilderWidget extends StatelessWidget {
  const MyCartListviewBuilderWidget({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 1.9,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomContainer(
              customSize: customSize,
              needWidth: 1,
              needheight: 6.5,
              child: Row(
                children: [
                  CustomContainer(
                    customSize: customSize,
                    needWidth: 3,
                    needheight: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomContainerWithBoxRadius(
                          customSize: customSize,
                          needWidth: 3,
                          needheight: 6,
                          radius: 20,
                          color: buttomColor,
                          child: Image.asset('assets/images/shoe.png')),
                    ),
                  ),
                  CustomContainer(
                    customSize: customSize,
                    needWidth: 2.3,
                    needheight: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          content: "Sample 1",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        CustomText(
                          content: "\$64.95",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        CustomContainer(
                          customSize: customSize,
                          needWidth: 2.7,
                          needheight: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [
                              CustomCircleAvatoar(
                                radius: 17,
                                color: buttomColor,
                                child: Icon(
                                  Icons.exposure_neg_1,
                                  color: textColor,
                                  size: 15,
                                ),
                              ),
                              const CustomSizedBox(
                                width: 10,
                              ),
                              CustomText(
                                content: "1",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                ),
                              ),
                              const CustomSizedBox(
                                width: 10,
                              ),
                              CustomCircleAvatoar(
                                radius: 17,
                                color: dotColorBlue,
                                child: Icon(
                                  Icons.exposure_plus_1,
                                  size: 15,
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomContainer(
                    customSize: customSize,
                    needWidth: 5.5,
                    needheight: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                          content: "L",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        const CustomSizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.delete_outline_sharp,
                          size: 30,
                          color: textColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}