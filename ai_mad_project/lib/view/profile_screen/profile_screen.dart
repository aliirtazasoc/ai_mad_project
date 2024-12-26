import 'package:ai_mad_project/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/color_constants.dart';
import '../../constants/customText.dart';
import '../bottom_nav_bar/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Responsive responsive = Responsive();

  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: responsive.setHeight(23),
                padding: EdgeInsets.only(
                  left: responsive.setWidth(4.5),
                  right: responsive.setWidth(4.5),
                  top: responsive.setHeight(8),
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: -35,
                right: 20,
                left: 20,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/png/profile_image.png",
                  ),

                  radius: 60,
                  // Use NetworkImage or AssetImage for the profile picture.
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
              
                    SizedBox(height: 10),
                    Text('Puerto Rico',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text('youremail@domain.com | +01 234 567 89',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 20),
                    _buildOptionTile('Edit profile information', Icons.edit, () {}),
                    _buildOptionTile('Notifications', Icons.notifications, () {},
                        isActive: true),
                    _buildOptionTile('Language', Icons.language, () {},
                        subTitle: 'English'),
                    SizedBox(height: 20),
                    Text('Preferences',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    _buildOptionTile('Security', Icons.lock, () {}),
                    _buildOptionTile('Theme', Icons.wb_sunny, () {},
                        subTitle: 'Light mode'),
                    SizedBox(height: 20),
                    Text('Help & Support',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    _buildOptionTile('Contact us', Icons.contact_mail, () {}),
                    _buildOptionTile('Privacy policy', Icons.privacy_tip, () {}),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOptionTile(String title, IconData icon, Function onTap,
      {bool isActive = false, String subTitle = ''}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () => onTap(),
      leading: Icon(icon, color: isActive ? Colors.blue : Colors.grey),
      title: Text(title),
      subtitle: subTitle.isNotEmpty
          ? Text(subTitle, style: TextStyle(color: Colors.grey))
          : null,
      trailing:
          isActive ? Text('ON', style: TextStyle(color: Colors.green)) : null,
    );
  }
}
