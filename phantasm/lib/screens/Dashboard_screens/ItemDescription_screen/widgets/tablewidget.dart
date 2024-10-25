import 'package:phantasm/core/Export/export.dart';

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
              decoration:
                  BoxDecoration(color: dotColorBlue), // Header background color
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
                    ),
                  ),
                ),
              ],
            ),

            // Add more TableRow as needed...
          ],
        ),
      ),
    );
  }
}
