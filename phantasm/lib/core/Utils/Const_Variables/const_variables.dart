import 'package:phantasm/core/Export/export.dart';


List<List<String>> splashscreenData = [
  [
    "Start Journey\nWith Shoes",
    "Smart,Gorgeous & Fashionable\nCollection",
    "Get Started",
  ],
  [
    "Follow Latest\nStyle Shoes",
    "There Are Many Beautiful And\nAttractive Plants To Your Room",
    "Next",
  ],
  [
    "Follow Latest\nStyle Shoes",
    "There Are Many Beautiful And\nAttractive Plants To Your Room",
    "Next",
  ]
];
List<String> drawerOption = [
  "Profile",
  "Home Page",
  "My Cart",
  "Favorate",
  "Orders",
  "Notifications",
];
List<IconData> drawerOptionIcons = [
  Icons.person,
  Icons.home,
  Icons.shopping_cart,
  Icons.favorite,
  Icons.local_shipping,
  Icons.notifications,
];
List<IconData> iconList = [
  Icons.home,
  Icons.favorite,
  Icons.notifications,
  Icons.person,
];
final List<String> items = [
  "Sample 1",
  "Sample 2",
  "Sample 3",
  "Sample 4",
];
final List<String> shoesSize = [
  "38",
  "39",
  "40",
  "41",
  "42",
  "43",
];
List<Widget>navigationScreenDashboard = const[
  HomepageScreen(),
  HomepageScreen(),
  HomeCartScreen(),
  HomepageScreen(),
  HomeItemdiscriptionScreen(),
  HomepageScreen(),
];
List<Widget>navigationScreenDashboardbottom = const[
  HomeDashboardScreen(),
  HomeCartScreen(),
  HomeItemdiscriptionScreen(),
  HomepageScreen(),
];