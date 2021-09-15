import 'package:clone_telegram/Chart_model.dart';
import 'package:clone_telegram/chatbuble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({Key? key, this.chat}) : super(key: key);

  final ChatModel? chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            color: Color(0xff517da2),
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white)),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(chat!.name,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Terakhir di lihat ' + '${chat!.time}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ]),
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Icons.more_vert, color: Colors.white))
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60)),
      body: Container(
        color: Color(0xff81ac77),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            ChatBubble(
              text: 'hallo, ${chat!.name}',
              isSender: true,
            ),
            ChatBubble(
              text: 'hallo, Juga Doraemon',
              isSender: false,
            ),
            ChatBubble(
              text: 'bagaimana kabarnya?',
              isSender: true,
            ),
            ChatBubble(
              text: 'alhamdulillah baik, kamu sendiri bagaimana?',
              isSender: false,
            )
          ],
        ),
      ),
      bottomSheet: PreferredSize(
          child: Container(
            color: Colors.grey[200],
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                Expanded(
                  child: Container(
                      child: TextFormField(
                    decoration: InputDecoration(hintText: 'Pesan'),
                  )),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.attachment)),
                IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(50)),
    );
  }
}
