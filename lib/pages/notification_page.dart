import 'package:facebook_userinterface/models/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('notifications',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
                ),
              ),

              Container(
                child: IconButton(
                  icon: Icon(Icons.check_circle),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  tooltip: 'mark all notification as read',
                  onPressed: () {
                    print('mark all notification as read');
                  }
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Colors.grey[300],),
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,color: Colors.black26),
        Expanded(
            child: ListView.builder(
              itemCount: notificationData.length,
                itemBuilder: (context,i)=> Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(notificationData[i].avatar),
                    backgroundColor: Colors.blueGrey,
                  ),
                  title: Text(
                    notificationData[i].name + ' ' +
                      notificationData[i].description,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(notificationData[i].time),
                  trailing: IconButton(
                    iconSize: 28,
                    onPressed: () => {},
                    icon: Icon(Icons.more_vert_outlined),
                  ),
                ),
              ],
            ),
            ),
        ),
      ],
    );
  }
}