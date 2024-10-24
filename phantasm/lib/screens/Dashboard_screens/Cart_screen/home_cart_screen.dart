import 'package:phantasm/core/Export/export.dart';

class HomeCartScreen extends StatelessWidget {
  const HomeCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 10,
                
                child: Row(
                  children: [
                    const CustomSizedBox(
                      width: 20,
                    ),
                    CustomCircleAvatoar(
                      radius: 25,
                      color: buttomColor,
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: textColor,
                        size: 15,
                      ),
                    ),
                    const CustomSizedBox(
                      width: 80,
                    ),
                    CustomText(
                      content: "MyCart",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
