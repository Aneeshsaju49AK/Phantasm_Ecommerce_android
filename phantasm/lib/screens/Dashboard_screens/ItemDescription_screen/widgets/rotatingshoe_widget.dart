import 'package:phantasm/core/Export/export.dart';

class RotatingShoe extends StatefulWidget {
  const RotatingShoe({super.key});

  @override
  State<RotatingShoe> createState() => _RotatingShoeState();
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
              child:const Icon(Icons.rotate_right, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}