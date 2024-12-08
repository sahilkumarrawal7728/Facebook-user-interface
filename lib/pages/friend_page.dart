import 'package:facebook_userinterface/models/friends_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget{
  FriendsPage({Key? key}) : super(key: key);
  
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Friends',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.person),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.green,
                      onPressed: () {
                        print('person clicked');
                      },
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: IconButton(
                      icon: Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.redAccent,
                      onPressed: () {
                        print('people clicked');
                      },
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(thickness: 1,
        color: Colors.black38,
        ),

        Expanded(
            child: ListView.builder(
              itemCount: friendsData.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(friendsData[i].avatar),
                      ),
                      title: Text(
                        friendsData[i].name,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Wrap(
                        spacing: 12,
                        children: [
                          TextButton(onPressed: () => {
                            print('friend add request send')
                          }, child: Text('add friend'),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )
                          ),),

                          TextButton(onPressed: () => {
                            print('friend removed')
                          }, child: Text('remove'),
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.grey[300],
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )
                            ),),
                        ],
                      ),
                      onTap: () {
                        print('open clicked user profile');
                      },
                    )
                  ],
                ))),
      ],
    );
  }
}