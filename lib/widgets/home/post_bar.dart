import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class PostBar extends StatelessWidget{
   const PostBar({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       IconButton(
         iconSize: 50,
           onPressed: ()=> print('user avtar clicked'),
           icon: CircleAvatar(
             radius: 25.0,
             backgroundImage: AssetImage('images/user/sonam.jpg'),
           ),
       ),
         TextButton(onPressed: () =>{},
             child: Text("whats on your mind?",
               style: TextStyle(fontSize: 25,color: Colors.grey[600]),)
         ),
         Container(
           height: 60,
           child: VerticalDivider(
             color: Colors.black26,)
           ,),
         Column(
           children: [
             IconButton(onPressed: () => {},
                 icon: Icon(Icons.photo_album_outlined)
             ),
             Text('photo'),
           ],
         )
       ],
     );
   }
 }