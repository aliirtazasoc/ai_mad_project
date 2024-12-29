import 'package:ai_mad_project/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/customText.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Responsive responsive = Responsive();

  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      backgroundColor: whiteColor,
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
                bottom: -55,
                right: 20,
                left: 20,
                child: Image.asset(
                  "assets/png/profile_image.png",
                  height: 120,
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: responsive.setWidth(4.5),
                  right: responsive.setWidth(4.5),
                  top: responsive.setHeight(5),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    customText(
                      text: 'Ali Irtaza',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    customText(
                      text: 'youremail@domain.com | +01 234 567 89',
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.setWidth(4),
                          vertical: responsive.setHeight(0.1),
                        ),
                        child: Column(
                          children: [
                            _buildOptionTile(
                                'Edit profile information', Icons.edit, () {}),
                            _buildOptionTile(
                                'Notifications', Icons.notifications, () {},
                                isActive: false),
                            _buildOptionTile('Language', Icons.language, () {},
                                subTitle: 'English'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.setWidth(4),
                          vertical: responsive.setHeight(0.1),
                        ),
                        child: Column(
                          children: [
                            _buildOptionTile('Security', Icons.lock, () {}),
                            _buildOptionTile('Theme', Icons.wb_sunny, () {},
                                subTitle: 'Light mode'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.setWidth(4),
                          vertical: responsive.setHeight(0.1),
                        ),
                        child: Column(
                          children: [
                            _buildOptionTile(
                                'Help & support', Icons.contact_mail, () {}),
                            _buildOptionTile(
                                'Contact us', Icons.contact_mail, () {}),
                            _buildOptionTile(
                                'Privacy policy', Icons.privacy_tip, () {}),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
      leading: Icon(icon, color: isActive ? Colors.blue : Colors.black),
      title: customText(text: title),
      subtitle: subTitle.isNotEmpty
          ? customText(
              text: subTitle,
              color: Colors.black54,
            )
          : null,
      trailing:
          isActive ? Text('ON', style: TextStyle(color: Colors.green)) : null,
    );
  }
}
