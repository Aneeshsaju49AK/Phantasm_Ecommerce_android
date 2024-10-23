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
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                    // Menu Items
                    // SidebarMenuItem(
                    //   icon: Icons.person,
                    //   label: 'Profile',
                    //   onTap: () {},
                    // ),
                    // SidebarMenuItem(
                    //   icon: Icons.home,
                    //   label: 'Home Page',
                    //   onTap: () {},
                    // ),
                    // SidebarMenuItem(
                    //   icon: Icons.shopping_cart,
                    //   label: 'My Cart',
                    //   onTap: () {},
                    // ),
                    // SidebarMenuItem(
                    //   icon: Icons.favorite,
                    //   label: 'Favorite',
                    //   onTap: () {},
                    // ),
                    // SidebarMenuItem(
                    //   icon: Icons.local_shipping,
                    //   label: 'Orders',
                    //   onTap: () {},
                    // ),
                    // SidebarMenuItem(
                    //   icon: Icons.notifications,
                    //   label: 'Notifications',
                    //   onTap: () {},
                    // ),
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
                      onTap: () {},
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

class SidebarMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SidebarMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: textColorGrey),
      title: CustomText(
        content: label,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400, fontSize: 16, color: textColor),
      ),
      onTap: onTap,
    );
  }
}

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomPadding(
      left: 23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCircleAvatoar(
            radius: 30,
            // backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image asset
          ),
          CustomSizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBox(
                width: 10,
              ),
              Text(
                'Hey, 👋',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              CustomSizedBox(
                height: 5,
              ),
              Text(
                'Alisson Becker',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Custom Clipper for the slanted shape
class SlantedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at the top-left corner
    path.moveTo(0, 0);

    // Draw a line to the top-right corner (full width at the top)
    path.lineTo(size.width, 0);

    // Draw a diagonal line from the top-right to 200px from the left at the bottom
    path.lineTo(10, size.height);

    // Draw a line to the bottom-left corner
    path.lineTo(0, size.height);

    // Close the path (draws back to the starting point)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
