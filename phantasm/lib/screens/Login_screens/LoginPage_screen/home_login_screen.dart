import 'package:phantasm/core/Export/export.dart';

class HomeLoginScreen extends StatefulWidget {
  const HomeLoginScreen({super.key});

  @override
  State<HomeLoginScreen> createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor, // Example background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                BackButtomInHomeLoginScreen(customSize: customSize),
                WelcomeMessageLoginScreen(customSize: customSize),
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
                    if (_formKey.currentState!.validate()) {
                      // Call AuthProvider's validateCredentials method
                      Provider.of<AuthProvider>(context, listen: false)
                          .validateCredentials(
                        context,
                        emailController.text,
                        passwordController.text,
                      );
                    }
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
                            color:
                                textColor, // Example color for "Sign up Free"
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
      ),
    );
  }
}

class WelcomeMessageLoginScreen extends StatelessWidget {
  const WelcomeMessageLoginScreen({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
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
    );
  }
}

class BackButtomInHomeLoginScreen extends StatelessWidget {
  const BackButtomInHomeLoginScreen({
    super.key,
    required this.customSize,
  });

  final Size customSize;

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashScreenProvider>(
      builder: (context, splashScreenProvider, child) {
        return CustomContainer(
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
                    // Call goToPage function from SplashScreenProvider and then pop

                    navigationToPop(context);
                    splashScreenProvider.goToPage(1, context);
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
        );
      },
    );
  }
}
