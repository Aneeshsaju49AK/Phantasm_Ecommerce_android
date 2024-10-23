import 'package:phantasm/core/Export/export.dart';
import 'package:phantasm/screens/Dashboard_screens/DashboardPage_screen/home_dashboard_screen.dart';

class HomeLoginScreen extends StatelessWidget {
  const HomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor, // Example background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 13,
                child: CustomPadding(
                  left: 20,
                  top: 10,
                  child: Row(
                    children: [
                      InkWell(
                        focusColor: buttomColor,
                        onTap: () {
                          navigationToPop(context);
                        },
                        child: CustomCircleAvatoar(
                          radius: 23,
                          color: buttomColor,
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomContainer(
                customSize: customSize,
                needWidth: 1,
                needheight: 6,
                child: Column(
                  children: [
                    CustomText(
                      content: "Hello Again!",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    CustomText(
                      content: "Welcome Back You've Been Missed!",
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFieldWidget(
                customSize: customSize,
                title: "Email Address",
                hintText: "Email",
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                isvalid: false,
              ),
              const CustomSizedBox(
                height: 30,
              ),
              CustomTextFieldWithSurfixIcon(
                customSize: customSize,
                title: "Password",
                hintText: 'Password',
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                  return null;
                },
                isvalid: false,
              ),
              const CustomSizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    content: "Recovery Password",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const CustomSizedBox(
                    width: 50,
                  ),
                ],
              ),
              const CustomSizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  navigationToScreen(context, HomeDashboardScreen(),);
                },
                child: CustomContainerWithBoxDecoration(
                    needWidth: 1.1,
                    needheight: 14,
                    customSize: customSize,
                    content: "Sign In"),
              ),
              const CustomSizedBox(
                height: 30,
              ),
              CustomcontainerWithBoxdecorationWithImage(
                needWidth: 1.1,
                needheight: 14,
                customSize: customSize,
                content: "Sign in with Google",
                image: "assets/images/google.png",
                color: buttomColor,
              ),
              const CustomSizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: textColorGrey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign up Free',
                        style: TextStyle(
                          color: textColor, // Example color for "Sign up Free"
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomSizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
