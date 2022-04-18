import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageURL =
        "https://media-exp1.licdn.com/dms/image/C4D03AQH5-EWmBbPSOQ/profile-displayphoto-shrink_200_200/0/1649396730913?e=1655942400&v=beta&t=uHpxbscTXI7_wdmPmCvflfXEWzTP-qGwVRTQ9QduDgU";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Yash Soni"),
                accountEmail: const Text("Yash@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              )),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Email me",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
