import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:phantasm/core/Export/export.dart';


class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _selectedIndex = -1;
  TextEditingController searchController = TextEditingController();
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSectionHomePageScreenWidget(customSize: customSize),
              SearchSectionHomeScreenPage(searchController: searchController),
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // For horizontal list view
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final isSelected = _selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                           // Update selected index
                        });
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 20, left: 18),
                        child: Container(
                          width:
                              customSize.width / 4.8, // Adjust width as needed
                          height:
                              customSize.height / 9, // Adjust height as needed
                          alignment: Alignment.center,
                          // Add spacing between items
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.blue
                                : Colors
                                    .transparent, // Change background when selected
                            borderRadius:
                                BorderRadius.circular(20), // Rounded corners
                            border: Border.all(
                              color: isSelected
                                  ? Colors.blue
                                  : Colors
                                      .transparent, // Border color based on selection
                            ),
                          ),
                          child: Text(
                            items[index],
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isSelected
                                  ? Colors.white
                                  : Colors
                                      .white, // Change text color when selected
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 3,
                child: Column(
                  children: [
                    SubSectionHeaderHomePageWidget(customSize: customSize),
                    ListViewBuilderHomePagePopularShoesWidget(
                        customSize: customSize)
                  ],
                ),
              ),
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 4.2,
                child: Column(
                  children: [
                    SubSectionHeaderHomePageWidget(customSize: customSize),
                    BestChoiceSectionHomepageWidget(customSize: customSize),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: dotColorBlue,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {
            navigationToScreen(context,const HomeCartScreen(),);
          },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 70, // navigation bar
        icons: iconList, activeColor: dotColorBlue, splashColor: dotColorBlue,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchMargin: 10, // Default notch margin is 8
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
             _bottomNavIndex = index;
            navigationToScreen(context, navigationScreenDashboardbottom[index],);
          });
          
        },
        backgroundColor: buttomColor,
      ),
    );
  }
}
