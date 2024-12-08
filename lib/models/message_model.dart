import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageModel{
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
});

  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData =[
  MessageModel(
      name: "Rahul",
      time: "10:20",
      avatar: "images/user/u3.jpg",
      status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Shruti",
    time: "15:20",
    avatar: "images/user/u2.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Rajan",
    time: "14:20",
    avatar: "images/user/u1.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "kethy",
    time: "13:20",
    avatar: "images/user/u4.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Emmz",
    time: "11:20",
    avatar: "images/user/u5.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Vikash",
    time: "21:34",
    avatar: "images/user/u6.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Suhani",
    time: "13:26",
    avatar: "images/user/u7.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Kunal",
    time: "12:23",
    avatar: "images/user/u8.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Khushi",
    time: "14:35",
    avatar: "images/user/u9.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Sameer",
    time: "10:25",
    avatar: "images/user/u10.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Kethy",
    time: "10:20",
    avatar: "images/user/u1.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Emmz",
    time: "10:20",
    avatar: "images/user/u2.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Vikash",
    time: "22:18",
    avatar: "images/user/u3.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Suhani",
    time: "23:50",
    avatar: "images/user/u4.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Kunal",
    time: "08:45",
    avatar: "images/user/u5.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Khushi",
    time: "09:15",
    avatar: "images/user/u6.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Sameer",
    time: "18:56",
    avatar: "images/user/u7.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Kethy",
    time: "17:08",
    avatar: "images/user/u8.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Emmz",
    time: "16:10",
    avatar: "images/user/u9.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Vikash",
    time: "15:40",
    avatar: "images/user/u10.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Suhani",
    time: "20:30",
    avatar: "images/user/u4.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Kunal",
    time: "14:25",
    avatar: "images/user/u3.jpg",
    status: MessageModel.statusOffline,
  ),

  MessageModel(
    name: "Khushi",
    time: "11:20",
    avatar: "images/user/u1.jpg",
    status: MessageModel.statusOnline,
  ),

  MessageModel(
    name: "Sameer",
    time: "10:40",
    avatar: "images/user/u2.jpg",
    status: MessageModel.statusOnline,
  ),
];