import 'package:phantasm/core/Export/export.dart';

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  CustomPadding(
      left: 23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCircleAvatoar(
            radius: 30,
            child: Image.asset('assets/images/image copy 2.png'),
            // backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image asset
          ),
        const  CustomSizedBox(
            width: 10,
          ),
        const  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBox(
                width: 10,
              ),
              Text(
                'Hey, 👋',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              CustomSizedBox(
                height: 5,
              ),
              Text(
                'Alisson Becker',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


