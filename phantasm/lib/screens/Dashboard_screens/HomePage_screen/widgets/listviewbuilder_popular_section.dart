import 'package:phantasm/core/Export/export.dart';

class ListViewBuilderHomePagePopularShoesWidget extends StatelessWidget {
  const ListViewBuilderHomePagePopularShoesWidget({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: 3.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: CustomContainerWithBoxRadius(
              customSize: customSize,
              needWidth: 2.2,
              needheight: 4,
              radius: 20,
              color: buttomColor,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    customSize: customSize,
                    needWidth: 1,
                    needheight: 8,
                    color: buttomColor,
                    child: Image.asset(
                      "assets/images/shoe.png",
                      scale: 3,
                    ),
                  ),
                  CustomPadding(
                    left: 10,
                    child: CustomText(
                      content: "BEST SELLER",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: dotColorBlue,
                      ),
                    ),
                  ),
                  CustomPadding(
                    left: 10,
                    child: CustomText(
                      content: "Sample 1 ",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                   const CustomSizedBox(
                        width: 10,
                      ),
                      CustomText(
                        content: "\$849.69 ",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    const  Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: dotColorBlue,
                          borderRadius:
                            const  BorderRadiusDirectional.only(
                            topStart: Radius.circular(20),
                            bottomEnd: Radius.circular(20),
                          ),
                        ),
                        child:const Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}