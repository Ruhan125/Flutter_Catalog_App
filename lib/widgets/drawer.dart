import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgurl =
        "https://scontent.fdac5-1.fna.fbcdn.net/v/t39.30808-6/300362498_731749041249604_574091458950085388_n.jpg?stp=cp1_dst-jpg&_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3JxNuQdrrIQAX82BK42&_nc_ht=scontent.fdac5-1.fna&oh=00_AT89btT1aOh26Hlw2yzzdC0x9xrCdVKm0NBz3OhIbujy7A&oe=6311E46F";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ruhan125"),
                accountEmail: Text("www.ruhanahmed@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.chat_bubble,
              color: Colors.black,
            ),
            title: Text(
              "Chat Me",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
