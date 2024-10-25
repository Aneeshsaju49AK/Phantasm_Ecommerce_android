import 'package:phantasm/core/Export/export.dart';

class SidebarMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SidebarMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: textColorGrey),
      title: CustomText(
        content: label,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400, fontSize: 16, color: textColor),
      ),
      onTap: onTap,
    );
  }
}

