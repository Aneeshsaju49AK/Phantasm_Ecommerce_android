//try to call of import from export file

import 'package:phantasm/core/Export/export.dart';

class HomeSplashScreen extends StatefulWidget {
  const HomeSplashScreen({super.key});

  @override
  State<HomeSplashScreen> createState() => _HomeSplashScreenState();
}

class _HomeSplashScreenState extends State<HomeSplashScreen> {
  int index = 0;
 final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (value) {
            index = value;
            if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const HomeLoginScreen(), // Replace with your next screen widget
                ),
              );
            }
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomContainer(
                    customSize: customSize,
                    needWidth: 1,
                    needheight: 1.9,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomContainer(
                            customSize: customSize,
                            needWidth: 1,
                            needheight: 2.2,
                            child: Image.asset(
                              'assets/images/shoe.png',
                              scale: 1,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CustomContainer(
                            customSize: customSize,
                            needWidth: 2.3,
                            needheight: 4.2,
                            child: Image.asset(
                              'assets/images/splashscreen_round.png',
                              scale: 1,
                            ),
                          ),
                        ),
                        CustomDotsInSplashScreen(
                          xAlign: 0.7,
                          yAlign: 0.7,
                          color: dotColorBlue,
                        ),
                        CustomDotsInSplashScreen(
                          xAlign: -0.9,
                          yAlign: 0.9,
                          color: dotColorBlue,
                        ),
                        CustomDotsInSplashScreen(
                          xAlign: -0.6,
                          yAlign: -0.3,
                          color: dotColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CustomContainer(
                    customSize: customSize,
                    needWidth: 1,
                    needheight: 2.4,
                    child: Column(
                      children: [
                        CustomContainer(
                          customSize: customSize,
                          needWidth: 1.1,
                          needheight: 7.1,
                          child: CustomText(
                            content: splashscreenData[index][0],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: textColor,
                            ),
                          ),
                        ),
                        const CustomSizedBox(
                          height: 10,
                        ),
                        CustomContainer(
                          customSize: customSize,
                          needWidth: 1.1,
                          needheight: 13,
                          child: CustomText(
                            content:
                                splashscreenData[index][1],
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: textColorGrey,
                            ),
                          ),
                        ),
                        CustomContainer(
                          customSize: customSize,
                          needWidth: 1.1,
                          needheight: 7,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: CustomContainer(
                                  customSize: customSize,
                                  needWidth: 3,
                                  needheight: 7,
                                  child: SmoothPageIndicator(
                                    controller: _pageController,
                                    count: 3,
                                    effect: ExpandingDotsEffect(
                                      activeDotColor: dotColorBlue,
                                      dotColor: textColor,
                                      dotHeight: 6,
                                      dotWidth: 16,
                                      expansionFactor: 2,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: CustomContainer(
                                  customSize: customSize,
                                  needWidth: 2,
                                  needheight: 7,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: CustomContainerWithBoxDecoration(
                                      content: splashscreenData[index][2],
                                      customSize: customSize,
                                      needWidth: 2.5,
                                      needheight: 14,
                                      color: dotColorBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}











