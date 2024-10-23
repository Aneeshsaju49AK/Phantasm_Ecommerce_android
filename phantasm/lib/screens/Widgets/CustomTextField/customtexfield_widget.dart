import 'package:phantasm/core/Export/export.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.customSize,
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
  final bool? isObscure;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customSize: customSize,
      needWidth: 1.1,
      needheight: isvalid ? 9.5 : 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            content: title,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: textColorGrey,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none),
              filled: true, // Enables the background color
              fillColor: isFillColor! ? buttomColor : buttomColor,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 10,
              ),
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
