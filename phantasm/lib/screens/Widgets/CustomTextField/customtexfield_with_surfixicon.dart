import 'package:phantasm/core/Export/export.dart';

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
      needWidth: 1.1,
      needheight: widget.isvalid ? 9.5 : 8,
      customSize: widget.customSize,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            content: widget.title,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
          TextFormField(
            controller: widget.controller,
            obscureText: _isObscure,
            decoration: InputDecoration(
              hintText: widget.hintText,
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
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  color: textColor,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              filled: true, // Enables the background color
              fillColor: widget.isFillColor! ? buttomColor : buttomColor,
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
