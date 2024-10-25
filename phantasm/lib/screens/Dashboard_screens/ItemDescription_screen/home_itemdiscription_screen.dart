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
                            border: const Border.symmetric(
                              vertical: BorderSide(
                                color: Colors.blue,
                                width: 10,
                                style: BorderStyle.solid,
                              ),
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
