import 'dart:math';

import 'package:phantasm/core/Export/export.dart';

class HomeItemdiscriptionScreen extends StatefulWidget {
  const HomeItemdiscriptionScreen({super.key});

  @override
  State<HomeItemdiscriptionScreen> createState() =>
      _HomeItemdiscriptionScreenState();
}

class _HomeItemdiscriptionScreenState extends State<HomeItemdiscriptionScreen> {
  double _rotationAngle = 0.0;

  void _rotateShoe() {
    setState(() {
      _rotationAngle += 0.2; // Increment rotation angle
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ItemDescriptionHeaderSection(customSize: customSize),
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 3,
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      bottom: 80,
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.identity()
                          ..rotateX(
                              140), // Rotate along the X-axis (horizontal)
                        child: Container(
                          width: customSize.width / 1.3,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.blue,
                              width: 10,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      child: Transform.rotate(
                        angle: _rotationAngle, // Apply rotation angle
                        child: Image.asset(
                          'assets/images/shoe.png', // Replace with the path to your shoe image
                          width: 210,
                          height: 200,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 170,
                        bottom: 30,
                        child: InkWell(
                          onTap: _rotateShoe,
                          child: CustomCircleAvatoar(
                              radius: 16,
                              child: Icon(
                                Icons.compare_arrows_outlined,
                                size: 30,
                                color: textColor,
                              )),
                        ))
                  ],
                ),
              ),
              BestSellersSectionItemDescription(customSize: customSize),
              GallerySectionItemDescription(customSize: customSize),
              SizeSectionItemDescription(customSize: customSize),
              TableWidgetItemDescription(customSize: customSize),
              PriceSectionItemDescription(customSize: customSize),
            ],
          ),
        ),
      ),
    );
  }
}

class RotatingShoe extends StatefulWidget {
  @override
  _RotatingShoeState createState() => _RotatingShoeState();
}

class _RotatingShoeState extends State<RotatingShoe> {
  double _rotationAngle = 0.0;

  // Function to rotate the shoe image
  void _rotateShoe() {
    setState(() {
      _rotationAngle += 0.2; // Increment rotation angle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900], // Dark background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Rotating shoe image
            Transform.rotate(
              angle: _rotationAngle, // Apply rotation angle
              child: Image.asset(
                'assets/images/shoe.png', // Replace with the path to your shoe image
                width: 200,
                height: 180,
              ),
            ),

            // Blue circular button
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: _rotateShoe,
              child: Icon(Icons.rotate_right, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class TableWidgetItemDescription extends StatelessWidget {
  const TableWidgetItemDescription({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        customSize: customSize,
        needWidth: 1,
        needheight: 3,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Table(
            columnWidths: const {
              0: FractionColumnWidth(0.25), // Adjust column widths as needed
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.25),
              3: FractionColumnWidth(0.25),
            },
            border: TableBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              bottom: BorderSide(width: 1, color: textColor),
              top: BorderSide(width: 1, color: textColor),
              left: BorderSide(width: 1, color: textColor),
              right: BorderSide(width: 1, color: textColor),
              horizontalInside: BorderSide(color: textColor, width: 1),
            ),
            children: [
              // Header row with background color and specific height
              TableRow(
                decoration: BoxDecoration(
                    color: dotColorBlue), // Header background color
                children: [
                  TableCell(
                    child: Container(
                      height: 55, // Set height for the header row
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Variants",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 55,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Price",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 55,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Stock",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 55,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Quantity",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Data rows with specific height
              TableRow(
                children: [
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Colour 1",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "\$13.75",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "108",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCircleAvatoar(
                              radius: 15,
                              color: buttomColor,
                              child: Icon(
                                Icons.exposure_neg_1,
                                size: 15,
                                color: textColor,
                              ),
                            ),
                            CustomText(
                              content: "1",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: textColor,
                              ),
                            ),
                            CustomCircleAvatoar(
                              radius: 15,
                              color: dotColorBlue,
                              child: Icon(
                                Icons.exposure_plus_1,
                                color: textColor,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Colour 1",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "\$13.75",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "108",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCircleAvatoar(
                              radius: 15,
                              color: buttomColor,
                              child: Icon(
                                Icons.exposure_neg_1,
                                size: 15,
                                color: textColor,
                              ),
                            ),
                            CustomText(
                              content: "1",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: textColor,
                              ),
                            ),
                            CustomCircleAvatoar(
                              radius: 15,
                              color: dotColorBlue,
                              child: Icon(
                                Icons.exposure_plus_1,
                                color: textColor,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Colour 1",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "\$13.75",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "108",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCircleAvatoar(
                              radius: 15,
                              color: buttomColor,
                              child: Icon(
                                Icons.exposure_neg_1,
                                size: 15,
                                color: textColor,
                              ),
                            ),
                            CustomText(
                              content: "1",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: textColor,
                              ),
                            ),
                            CustomCircleAvatoar(
                              radius: 15,
                              color: dotColorBlue,
                              child: Icon(
                                Icons.exposure_plus_1,
                                color: textColor,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "Colour 1",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "\$13.75",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: CustomText(
                        content: "108",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCircleAvatoar(
                              radius: 15,
                              color: buttomColor,
                              child: Icon(
                                Icons.exposure_neg_1,
                                size: 15,
                                color: textColor,
                              ),
                            ),
                            CustomText(
                              content: "1",
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: textColor,
                              ),
                            ),
                            CustomCircleAvatoar(
                              radius: 15,
                              color: dotColorBlue,
                              child: Icon(
                                Icons.exposure_plus_1,
                                color: textColor,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),

              // Add more TableRow as needed...
            ],
          ),
        ));
  }
}

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

class GallerySectionItemDescription extends StatelessWidget {
  const GallerySectionItemDescription({
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
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              content: "Gallery",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomContainerWithBoxRadius(
                        customSize: customSize,
                        needWidth: 5,
                        needheight: 10,
                        color: dotColor,
                        radius: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            "assets/images/shoe.png",
                            scale: 3,
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}

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
          const BackButtonCommon(),
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
