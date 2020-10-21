import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/models.dart';

class ChatTab extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        Widget chatInfo = Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              chats[index].name,
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              DateFormat("dd/MM/yyyy")
                  .format(DateTime.parse(
                      chats[index].time.split('/').reversed.join()))
                  .toString(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        );

        return Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 28.0,
                backgroundImage: NetworkImage(chats[index].imgUrl),
                backgroundColor: Colors.grey,
              ),
              title: Column(
                children: [
                  chatInfo,
                ],
              ),
              subtitle: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: double.infinity,
                    child: Text(
                      chats[index].message,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Divider(height: 10, thickness: 1),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
