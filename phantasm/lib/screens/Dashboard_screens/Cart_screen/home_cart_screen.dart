import 'package:phantasm/core/Export/export.dart';

class HomeCartScreen extends StatelessWidget {
  const HomeCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            MyCartHeaderWithBackButtonWidget(customSize: customSize),
            MyCartListviewBuilderWidget(customSize: customSize),
            const Spacer(),
            MyCartAmountSection(customSize: customSize),
          ],
        ),
      ),
    );
  }
}
