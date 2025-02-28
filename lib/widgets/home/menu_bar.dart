import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(onPressed: () =>
          print('add post clicked'),
            child: Row(
              children: [
                Icon(Icons.post_add_outlined),
                Text('Text',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600]),)
              ],
            ),
        ),
        Container(
          height: 40,
          child: VerticalDivider(
              color: Colors.black26),
        ),

        TextButton(onPressed: () =>
          print('video live clicked'),
          child: Row(
            children: [
              Icon(Icons.video_call,color: Colors.redAccent,),
              Text('Live Video',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600]),)
            ],
          ),
        ),
        Container(
          height: 40,
          child: VerticalDivider(
              color: Colors.black26),
        ),

        TextButton(onPressed: () =>
          print('location clicked'),
          child: Row(
            children: [
              Icon(Icons.location_on,color: Colors.red  ,),
              Text('Loction',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600]),)
            ],
          ),
        )
      ],
    );
  }
}