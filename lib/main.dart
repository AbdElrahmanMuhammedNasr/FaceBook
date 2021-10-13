import 'package:flutter/material.dart';
import 'package:flutter_main_app/Groups/Groups.dart';
import 'package:flutter_main_app/Home/Home.dart';
import 'package:flutter_main_app/Notifications/Notifications.dart';
import 'package:flutter_main_app/TV/tv.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool is_home = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Facebook'),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('hi');
                  }),
              IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    print('hi');
                  })
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.live_tv),
                ),
                Tab(
                  icon: Icon(Icons.group_rounded),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  icon: Icon(Icons.menu),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              new HomePage(),
              new TvPage(),
              new Group(),
              new Notifications(),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
