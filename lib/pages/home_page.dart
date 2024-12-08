import 'package:facebook_userinterface/widgets/home/menu_bar.dart';
import 'package:facebook_userinterface/widgets/home/post.dart';
import 'package:facebook_userinterface/widgets/home/post_bar.dart';
import 'package:facebook_userinterface/widgets/home/story_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [PostBar(),
          Divider(thickness: 1,color: Colors.black12),
          Menubar(),
          Divider(thickness: 7,color: Colors.black12),
          Storybar(),
          Divider(thickness: 7,color: Colors.black12),
          Post(),


        ],
      ),
    );
  }
}