import 'package:flutter/material.dart';
import 'package:flutter_main_app/Shared/Post.dart';
import 'package:flutter_main_app/Shared/Story.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // height: 120,
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                            image: DecorationImage(
                              image: AssetImage('images/1.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[200],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: "\t What's on your mind?"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //////////////////////////////////////////////////////////////////////
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Stories',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              ),
                              Text('See Archive')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 180,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeStory(
                                    storyImage: "images/21.jpg",
                                    userImage: "images/1.jpg",
                                    userName: "AbdElrahman"),
                                makeStory(
                                    storyImage: "images/22.jpg",
                                    userImage: "images/2.jpg",
                                    userName: "AbdElrahman"),
                                makeStory(
                                    storyImage: "images/23.jpg",
                                    userImage: "images/mb.jpeg",
                                    userName: "AbdElrahman"),
                                makeStory(
                                    storyImage: "images/21.jpg",
                                    userImage: "images/1.jpg",
                                    userName: "AbdElrahman"),
                                makeStory(
                                    storyImage: "images/22.jpg",
                                    userImage: "images/2.jpg",
                                    userName: "AbdElrahman"),
                                makeStory(
                                    storyImage: "images/23.jpg",
                                    userImage: "images/mb.jpeg",
                                    userName: "AbdElrahman"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          makePost(
                              userName: "Tamer Lai",
                              userImage: "images/2.jpg",
                              feedTime: "1 hr age",
                              feedText:
                                  'we are like this we are like this we are like this we are like this we are like this we are like this',
                              feedImage: 'images/23.jpg'),
                          makePost(
                            userName: "Tamer Lai",
                            userImage: "images/1.jpg",
                            feedTime: "1 hr age",
                            feedText:
                                'we are like this we are like this we are like this we are like this we are like this we are like this',
                          ),
                          makePost(
                              userName: "Tamer Lai",
                              userImage: "images/mb.jpeg",
                              feedTime: "1 hr age",
                              feedText:
                                  'we are like this we are like this we are like this we are like this we are like this we are like this',
                              feedImage: 'images/21.jpg'),
                          makePost(
                              userName: "Tamer Lai",
                              userImage: "images/mb.jpeg",
                              feedTime: "1 hr age",
                              feedText:
                                  'we are like this we are like this we are like this we are like this we are like this we are like this',
                              feedImage: 'images/22.jpg'),
                          makePost(
                            userName: "Tamer Lai",
                            userImage: "images/1.jpg",
                            feedTime: "1 hr age",
                            feedText:
                                'we are like this we are like this we are like this we are like this we are like this we are like this',
                          ),
                          makePost(
                            userName: "Tamer Lai",
                            userImage: "images/1.jpg",
                            feedTime: "1 hr age",
                            feedText:
                                'we are like this we are like this we are like this we are like this we are like this we are like this',
                          ),
                          makePost(
                              userName: "Tamer Lai",
                              userImage: "images/mb.jpeg",
                              feedTime: "1 hr age",
                              feedText:
                                  'we are like this we are like this we are like this we are like this we are like this we are like this',
                              feedImage: 'images/24.jpg'),
                          makePost(
                              userName: "Tamer Lai",
                              userImage: "images/mb.jpeg",
                              feedTime: "1 hr age",
                              feedText:
                                  'we are like this we are like this we are like this we are like this we are like this we are like this',
                              feedImage: 'images/25.jpg'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}