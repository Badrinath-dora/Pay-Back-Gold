import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/login_screen.dart';
import 'package:paybackgold_app/misc/constants.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constants.appLightPrimaryColor(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF8B0000)),
            accountName: Text("User Name"),
            accountEmail: Text("user@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Color(0xFF8B0000)),
            ),
          ),
          // const Divider(),
          ExpansionTile(
            title: const Text('GOLD JEWELLERY'),
            children: [
              ListTile(
                title: const Text('Coins'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Rings'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Chains'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Necklaces'),
                onTap: () {},
              ),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('SILVER JEWELLERY'),
            children: [
              ListTile(
                title: const Text('Coins'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Rings'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Chains'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Necklaces'),
                onTap: () {},
              ),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('DIAMOND JEWELLERY'),
            children: [
              ListTile(
                title: const Text('Coins'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Rings'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Chains'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Necklaces'),
                onTap: () {},
              ),
            ],
          ),
          const Divider(),
          ListTile(
            title: const Text('GOLD COINS'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('SILVER ARTICLES'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('GIFTS'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('SAVING SCHEME'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Constact Us'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
