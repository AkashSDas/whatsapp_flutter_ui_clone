import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../models/models.dart';

class CallTab extends StatelessWidget {
  Widget _buildIncomingStatus(BuildContext context, bool isIncoming) {
    if (isIncoming) {
      return Icon(
        FontAwesome5.arrow_alt_circle_left,
        color: Colors.red,
      );
    }
    return Icon(
      FontAwesome5.arrow_alt_circle_right,
      color: Theme.of(context).accentColor,
    );
  }

  Widget _buildCallStatus(BuildContext context, bool isAudioCall) {
    if (isAudioCall) {
      return IconButton(
        icon: Icon(
          FontAwesome.phone,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () => print('Call button pressed'),
      );
    }
    return IconButton(
      icon: Icon(
        FontAwesome.video_camera,
        color: Theme.of(context).accentColor,
      ),
      onPressed: () => print('Call button pressed'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          Widget padding = Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
          );

          Widget callInfo = Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                calls[index].name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _buildIncomingStatus(context, calls[index].isIncoming),
                  padding,
                  Text(
                    '(${calls[index].frequency})',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  padding,
                  Text(
                    calls[index].time,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          );

          return Column(
            children: [
              SizedBox(height: 20),
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 28.0,
                  backgroundImage: NetworkImage(calls[index].imgUrl),
                  backgroundColor: Colors.grey,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    callInfo,
                    _buildCallStatus(context, calls[index].isAudioCall),
                  ],
                ),
              ),
              Divider(height: 10),
            ],
          );
        });
  }
}
