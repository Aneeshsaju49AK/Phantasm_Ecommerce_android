import 'package:phantasm/core/Export/export.dart';

class SearchSectionHomeScreenPage extends StatelessWidget {
  const SearchSectionHomeScreenPage({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      left: 20,
      right: 20,
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: "Looking for shoes",
          hintStyle: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: textColorGrey,
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: textColorGrey,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          filled: true, // Enables the background color
          fillColor: buttomColor,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 10,
          ),
        ),
        // obscureText: isObscure!,
        keyboardType: TextInputType.emailAddress,
        // validator: validator,
      ),
    );
  }
}