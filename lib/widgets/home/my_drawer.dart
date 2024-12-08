import 'package:facebook_userinterface/pages/friend_page.dart';
import 'package:facebook_userinterface/pages/market_page.dart';
import 'package:facebook_userinterface/pages/message_page.dart';
import 'package:facebook_userinterface/pages/profile_page.dart';
import 'package:facebook_userinterface/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: DrawerHeader(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () =>{
                    Navigator.of(context).pop()
                  },
                      icon: Icon(Icons.arrow_back),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  Text('Menu',style: TextStyle(fontSize: 24,color: Colors.black),
                  ),

                  Container(
                    child: IconButton(
                      icon: Icon(Icons.search),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: (){
                        print('search button clicked');
                      },
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
              ),
            ),

            Expanded(child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/user/sonam.jpg'),
                  ),
                  title: Text('Sonam Sharma',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                  subtitle: Text('view your profile'),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                        ),
                    ),
                  },
                ),
                Divider(thickness: 1, color: Colors.black12,
                ),

                ListTile(
                  leading: Icon(Icons.coronavirus_rounded,
                    color: Colors.red,
                  ),
                  title: Text('Cocid-19 Information Center',
                  style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('covid icon tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.message,
                    color: Colors.green,
                  ),
                  title: Text('Message',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: MessagePage(),
                          ),
                        ),
                        ),
                    ),
                  }
                ),

                ListTile(
                  leading: Icon(Icons.group,
                    color: Colors.blue,
                  ),
                  title: Text('Groups',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('group tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.shopping_bag,
                    color: Colors.blueGrey,
                  ),
                  title: Text('Marketplace',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: MarketPage(),
                          ),
                        )))
                  },
                ),

                ListTile(
                  leading: Icon(Icons.people,
                    color: Colors.green,
                  ),
                  title: Text('Friends',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: FriendsPage(),
                          ),
                        )))
                  }
                ),

                ListTile(
                  leading: Icon(Icons.video_label,
                    color: Colors.blue,
                  ),
                  title: Text('Videos',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: VideoPage(),
                          ),
                        )))
                  }
                ),

                ListTile(
                  leading: Icon(Icons.pages,
                    color: Colors.red,
                  ),
                  title: Text('pages',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('pages tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text('Settings',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('Settings tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: Text('privacy policy',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('privacy policy tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.help,
                    color: Colors.grey,
                  ),
                  title: Text('help center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('help center tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.book,
                    color: Colors.grey,
                  ),
                  title: Text('About',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('about tapped'),
                ),

                ListTile(
                  leading: Icon(Icons.logout,
                    color: Colors.red,
                  ),
                  title: Text('logout',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('logout tapped'),
                ),

              ],
            ),),
          ],

        )
    );
  }
}