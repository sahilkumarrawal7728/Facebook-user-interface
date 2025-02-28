import 'package:facebook_userinterface/widgets/home/menu_bar.dart';
import 'package:facebook_userinterface/widgets/home/post.dart';
import 'package:facebook_userinterface/widgets/home/post_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(onPressed: () =>{
                Navigator.of(context).pop()
              },
                icon: Icon(Icons.arrow_back),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              Text('Sonam Sharma'),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: EdgeInsets.only(top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/post/bird.jpg'),
                              fit: BoxFit.cover,
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                      left: 140,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          child: Image(
                            image: AssetImage('images/user/sonam.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('sonam sharma ',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        children: [
                          Icon(Icons.add_circle,color: Colors.white,),
                          Text('Add to story',style: TextStyle(
                            color: Colors.white
                          ),),
                        ],
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),

                  ),
                  ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          Text("Edit Profile",
                            style: TextStyle(
                                color: Colors.black),
                          ),
                        ],
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                    ),
                  ),
                  IconButton(onPressed: () => {},
                      icon: Icon(Icons.more_horiz))
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      Text('Studied at Marwadi university',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),)
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.gamepad),
                      Text('Single',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),)
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      Text('About',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),)
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friends', style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () => {},
                      child: Text('Find Friends',
                        style: TextStyle(fontSize: 16),
                      ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1,color: Colors.black38,
            ),
            PostBar(),
            Menubar(),
            Post(),
          ],
        ),
      ),
    );
  }
}