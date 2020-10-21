import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_ui_clone/models/Chat.dart';

class StatusCard extends StatelessWidget {
  // final since StatusCard is immutable
  final String title;
  final String imgUrl;
  final String time;

  StatusCard({this.title, this.time, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Theme.of(context).accentColor,
            width: 4,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        DateFormat("dd/MM/yyyy")
            .format(DateTime.parse(time.split('/').reversed.join()))
            .toString(),
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;

  Heading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: Colors.white12),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusCard(
          title: 'My Status',
          time: '28/10/2020',
          imgUrl:
              'https://images.unsplash.com/photo-1493106819501-66d381c466f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        ),
        Heading(heading: 'Recent updates'),
        StatusCard(
          title: chats[0].name,
          time: chats[0].time,
          imgUrl: chats[0].imgUrl,
        ),
        Divider(),
        Heading(heading: 'Today'),
        StatusCard(
          title: chats[1].name,
          time: chats[1].time,
          imgUrl: chats[1].imgUrl,
        ),
      ],
    );
  }
}
