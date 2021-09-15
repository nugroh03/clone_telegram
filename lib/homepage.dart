import 'package:clone_telegram/Chart_model.dart';
import 'package:clone_telegram/detailchat_page.dart';
import 'package:clone_telegram/drawerscreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff517da2),
        title: Text('Telegram'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailChat(
                              chat: items[i],
                            )));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(items[i].profileUrl),
                ),
                title: Text(
                  items[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(items[i].message),
                trailing: Text(items[i].time),
              ),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white),
        onPressed: () {},
        backgroundColor: Color(0xff65a9e0),
      ),
    );
  }
}
