import 'package:facebook_userinterface/models/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[

            Row(
              children: [
                IconButton(
                    iconSize: 50,
                    onPressed: () => {},
                    icon: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(postData[i].avatarImage),
                    )
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(postData[i].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Wrap(
                        spacing: 10,
                        children: [
                          Text(postData[i].time,
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                          ),
                          Icon(Icons.public),
                        ],
                      )
                    ],
                  ),
                ),

                IconButton(
                  iconSize: 30,
                  onPressed: () => postData[i].moreOnPressed,
                  icon: Icon(Icons.more_horiz_outlined),
                ),

              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      postData[i].postTitle,
                      style: TextStyle(color: Colors.black,fontSize:18),
                    ),
                  ),
                  Image(image: AssetImage(postData[i].postImage))

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: ()=> postData[i].likeOnPressed,
                      icon: Icon(Icons.thumb_up_alt_outlined),
                    ),
                    Text('12',style: TextStyle(fontSize: 20),)
                  ],
                ),

                Row(
                  children: [
                    IconButton(onPressed: ()=> postData[i].commentOnPressed,
                      icon: Icon(Icons.message_outlined),
                    ),
                    Text('12',
                      style: TextStyle(fontSize: 20),)
                  ],
                ),

                Row(
                  children: [
                    IconButton(onPressed: ()=> postData[i].shareOnPressed,
                      icon: Icon(Icons.share_outlined),
                    ),
                  ],
                )
              ],
            ),
          ],

            ],
          )
    );
  }
}