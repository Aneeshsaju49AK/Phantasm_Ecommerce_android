// Custom Clipper for the slanted shape
import 'package:phantasm/core/Export/export.dart';

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