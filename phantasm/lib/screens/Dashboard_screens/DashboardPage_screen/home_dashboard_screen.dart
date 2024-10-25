
import 'package:phantasm/core/Export/export.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 200,
              child: Transform.rotate(
                angle:
                    -0.4, // Adjust the angle in radians (e.g., 0.1 radians ~ 5.7 degrees)
                child: ClipPath(
                  clipper:
                      SlantedClipper(), // Custom clipper for the slope effect
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 5, // Adjust spread radius as needed
                          color: Colors.white.withOpacity(
                              0.5), // Adjust opacity for visibility
                          blurRadius: 10.0, // Blur radius
                          offset: const Offset(-1, -1), // Position the shadow
                        ),
                        BoxShadow(
                          spreadRadius: 0.6, // Adjust spread radius as needed
                          color: Colors.white
                              .withOpacity(0.5), // Optional second shadow
                          blurRadius: 0.6,
                          blurStyle: BlurStyle.outer,
                          offset: const Offset(0,
                              -10), // You can change this for a different effect
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: customSize.width,
                    height: customSize.height / 1.1,
                    child: Image.asset(
                      'assets/images/image copy.png', // Corrected the filename format
                      fit: BoxFit.cover, // Ensure the image covers the area
                    ),
                  ),
                ),
              ),
            ),
            CustomContainer(
              customSize: customSize,
              needWidth: 1,
              needheight: 1,
              color: Colors.transparent,
              child: CustomContainer(
                customSize: customSize,
                needWidth: 2,
                needheight: 1,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSizedBox(
                      height: customSize.height / 13,
                    ),
                    // Profile Section

                    const ProfileSectionWidget(),
                    const CustomSizedBox(
                      height: 40,
                    ),
                    CustomContainer(
                      customSize: customSize,
                      needWidth: 1.9,
                      needheight: 2,
                      color: Colors.transparent,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return SidebarMenuItem(
                            icon: drawerOptionIcons[index],
                            label: drawerOption[index],
                            onTap: () {
                              navigationToScreen(
                                context,
                                navigationScreenDashboard[index],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    CustomPadding(
                      left: 17,
                      child: CustomContainer(
                          customSize: customSize,
                          needWidth: 2.5,
                          needheight: 30,
                          child: const Divider(color: Colors.white24)),
                    ),
                    SidebarMenuItem(
                      icon: Icons.exit_to_app,
                      label: 'Sign Out',
                      onTap: () {
                        showSignOutDialog(context);
                      },
                    ),

                    const CustomSizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

