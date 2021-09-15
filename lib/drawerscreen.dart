import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff517da2),
            ),
            accountName: Text('Doraemon'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/b/bd/Doraemon_character.png'),
            ),
            accountEmail: Text('Doraemon@gmail.com'),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePress: () {},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: 'New Secret Group',
            onTilePress: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: 'New Channel Chat',
            onTilePress: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: 'Contact',
            onTilePress: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Save Message Call',
            onTilePress: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            onTilePress: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key, this.iconData, this.title, this.onTilePress})
      : super(key: key);

  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePress,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        '$title',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
