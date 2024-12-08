import 'package:facebook_userinterface/pages/friend_page.dart';
import 'package:facebook_userinterface/pages/home_page.dart';
import 'package:facebook_userinterface/pages/market_page.dart';
import 'package:facebook_userinterface/pages/message_page.dart';
import 'package:facebook_userinterface/pages/notification_page.dart';
import 'package:facebook_userinterface/pages/video_page.dart';
import 'package:facebook_userinterface/widgets/home/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as badges;

class MainTab extends StatefulWidget{
  MainTab({Key? key}): super(key: key);

  @override
  _MainTabState createState()=> _MainTabState();
}

class _MainTabState extends State<MainTab> with
    SingleTickerProviderStateMixin{
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(icon: badges.Badge(
      position: badges.BadgePosition.topEnd(top: -25,end: -5),
      badgeContent: Text('3',style: TextStyle(
          fontSize: 18,color: Colors.white),),
      child: Icon(Icons.notifications_outlined),),
    ),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: topTabs.length, initialIndex: 0, vsync:this)
    ..addListener(() {
      setState(() {

      });
    });

    super.initState();
  }

  Future<bool> _onWillPop() async{
    print("on will pop");
    if(_tabController?.index==0){
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(microseconds: 200), () {
      print('set index');
      _tabController?.index==0;
    });

    print('Return');
    return _tabController?.index == 0;
  }

  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(fontSize: 21,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.blue[700]),),
          actions: [
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

            Container(
              margin: EdgeInsets.symmetric(horizontal: 11),
              child: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _scaffoldkey.currentState!.openEndDrawer(),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width*1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage(),
        ],
        )
      ),
    );
  }
}