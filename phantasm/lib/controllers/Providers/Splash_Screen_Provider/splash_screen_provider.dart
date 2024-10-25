
import 'package:phantasm/core/Export/export.dart';


class SplashScreenProvider extends ChangeNotifier {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  int totalPages = 3;

  PageController get pageController => _pageController;
  int get currentIndex => _currentIndex;

  void onPageChanged(int value, BuildContext context) {
    _currentIndex = value;
    notifyListeners();

    // Navigate to HomeLoginScreen when on the last page
    if (_currentIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeLoginScreen()),
      );
    }
  }

  void goToPage(int index, BuildContext context) {
    onPageChanged(index, context); // Update the current page
  }

  void goToNextPage(BuildContext context) {
    // Increment current page if it's within bounds
    if (_currentIndex < totalPages - 1) {
      _currentIndex++;
    } else {
      _currentIndex = 0; // Reset to first page or handle as needed
    }

    // Animate to the next page
    pageController.animateToPage(
      _currentIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    // Update the provider with the new page index
    onPageChanged(_currentIndex, context);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
