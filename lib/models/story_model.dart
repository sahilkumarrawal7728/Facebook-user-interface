import 'package:flutter/material.dart';
class StoryModel{
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
});
}

List<StoryModel> storyData =[
  StoryModel(
      onTap: ()=> {print('priti story clicked')},
      image:'images/story/s1.jpg',
      userName: 'priti'),

  StoryModel(
      onTap: ()=> {print('priti story clicked')},
      image:'images/story/s2.jpg',
      userName: 'sonali'),

  StoryModel(
      onTap: ()=> {print('priti story clicked')},
      image:'images/story/s3.jpg',
      userName: 'sejal'),

  StoryModel(
      onTap: ()=> {print('priti story clicked')},
      image:'images/story/s4.jpg',
      userName: 'jack'),

  StoryModel(
      onTap: ()=> {print('priti story clicked')},
      image:'images/story/s5.jpg',
      userName: 'pragati'),
];