import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';

import '../widget/header.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.primary,
      body: ListView(
        children: [
          ProfileHeader(
            // gambar: data.data?.user!.photo ?? "",
            gambar:
                'https://nationaltoday.com/wp-content/uploads/2022/10/456840829-min-1200x834.jpg',
          ),
          SpacingHeight(fraction: 0.02),
          Text(
            "user",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                color: Warna.background),
          ),
          Text(
            'azhar@gmail.com | 08123456789',
            textAlign: TextAlign.center,
            style: TextStyle(color: Warna.background),
          ),
          SpacingHeight(fraction: 0.02),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Warna.primary,
              child: Column(
                children: [
                  ListTile(
                    leading:
                        Icon(Icons.account_circle, color: Warna.background),
                    title: const Text('My Account'),
                    subtitle: const Text('Make changes to your account'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Warna.background),
                    title: const Text('Log out'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.help, color: Warna.background),
                    title: const Text('Help & Support'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Warna.background),
                    title: const Text('About App'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
