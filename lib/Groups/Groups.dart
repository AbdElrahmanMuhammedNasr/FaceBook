import 'package:flutter/material.dart';
import 'package:flutter_main_app/Shared/Post.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 10), // width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groups',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search_outlined,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton.icon(
                      onPressed: () {
                        print('object');
                      },
                      icon: Icon(Icons.group),
                      label: Text('Your Groups')),
                  FlatButton.icon(
                      onPressed: () {
                        print('object');
                      },
                      icon: Icon(Icons.compass_calibration),
                      label: Text('Discover')),
                  FlatButton.icon(
                      onPressed: () {
                        print('object');
                      },
                      icon: Icon(Icons.insert_invitation),
                      label: Text('Invites')),
                ],
              ),
            ),
            // ///////////////

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  yourGroup(
                      groupImage: "images/1.jpg",
                      groupName: "ITI"),
                  yourGroup(
                      groupImage: "images/2.jpg",
                      groupName: "ML Egypt"),
                  yourGroup(
                      groupImage: "images/mb.jpeg",
                      groupName: "Books"),
                  yourGroup(
                      groupImage: "images/1.jpg",
                      groupName: "عسكري كحول"),
                  yourGroup(
                      groupImage: "images/2.jpg",
                      groupName: "شباب جامدين"),
                  yourGroup(
                      groupImage: "images/mb.jpeg",
                      groupName: "FCI"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //
            //
            Container(
              child: Column(
                children: [
                  makePost(
                      userName: "Tamer Lai",
                      userImage: "images/2.jpg",
                      feedTime: "1 hr age",
                      feedText:
                          'we are like this we are like this we are like this we are like this we are like this we are like this',
                      feedImage: 'images/23.jpg'),
                  makePost(
                      userName: "Tamer Lai",
                      userImage: "images/2.jpg",
                      feedTime: "1 hr age",
                      feedText:
                          'we are like this we are like this we are like this we are like this we are like this we are like this',
                      feedImage: 'images/23.jpg'),
                ],
              ),
            ),
          ]),
        )),
      ),
    );
  }
}

Widget yourGroup({groupImage, groupName}) {
  return AspectRatio(
    aspectRatio: 2 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(groupImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.1),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              groupName,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}