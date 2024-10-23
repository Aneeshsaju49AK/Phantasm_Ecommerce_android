import 'package:phantasm/core/Export/export.dart';

class HomeLoginScreen extends StatelessWidget {
  const HomeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size customSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
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
                    CustomCircleAvatoar(
                      radius: 23,
                      color: buttomColor,
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: textColor,
                        size: 15,
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
                      color: textColor,
                    ),
                  ),
                  CustomText(
                    content: "Welcome Back You've Been Missed!",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: textColorGrey,
                    ),
                  ),
                ],
              ),
            ),
            // CustomTextFieldWidget(
            //   customSize: customSize, title: "Email Address", hintText: "Email", controller: _emailController, validator: validator, isvalid: isvalid)
          ],
        ),
      ),
    );
  }
}

class CustomPadding extends StatelessWidget {
  const CustomPadding({
    this.left,
    this.right,
    this.bottom,
    this.top,
    this.child,
    super.key,
  });

  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
      child: child,
    );
  }
}
class CustomTextFieldWithSurfixIcon extends StatefulWidget {
  const CustomTextFieldWithSurfixIcon(
      {super.key,
      required this.customSize,
      required this.title,
      required this.hintText,
      required this.controller,
      required this.validator,
      required this.isvalid,
      this.isFillColor = false});

  final Size customSize;
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isvalid;
  final bool? isFillColor;

  @override
  State<CustomTextFieldWithSurfixIcon> createState() =>
      _CustomTextFieldWithSurfixIconState();
}

class _CustomTextFieldWithSurfixIconState
    extends State<CustomTextFieldWithSurfixIcon> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      
      needWidth: 1,
      needheight: widget.isvalid ? 9.5 : 8,
      customSize: widget.customSize,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(content: widget.title),
          TextFormField(
            controller: widget.controller,
            obscureText: _isObscure,
            decoration: InputDecoration(
              hintText: widget.hintText,
              // hintStyle: AppStyles.subTittleTextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: textColor,
                  width: 0.2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFDFE7F7), // Hex color code for #DFE7F7
                  width: 2, // You can adjust the width as needed
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              filled: true, // Enables the background color
              fillColor:
                  widget.isFillColor! ? Colors.teal[50] : Colors.transparent,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required  this.customSize,
      required this.title,
      required this.hintText,
      required this.controller,
      required this.validator,
      required this.isvalid,
      this.isObscure = false,
      this.isFillColor = false});

  final Size customSize;
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isvalid;
  final bool? isFillColor;
  final bool? isObscure ;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1,
      needheight: isvalid ? 9.5 : 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(content: title),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              // hintStyle: AppStyles.subTittleTextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: textColor,
                  width: 0.2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFDFE7F7), // Hex color code for #DFE7F7
                  width: 2, // You can adjust the width as needed
                ),
              ),
              filled: true, // Enables the background color
              fillColor: isFillColor! ? Colors.teal[50] : Colors.transparent,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            ),
            obscureText: isObscure!,
            keyboardType: TextInputType.emailAddress,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
