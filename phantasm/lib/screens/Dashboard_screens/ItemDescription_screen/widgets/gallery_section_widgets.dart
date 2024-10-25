import 'package:phantasm/core/Export/export.dart';

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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
