import 'package:flutter/material.dart';
import 'package:flutter_main_app/Shared/Post.dart';
import 'package:video_player/video_player.dart';

class TvPage extends StatefulWidget {
  @override
  _TvPageState createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Watch',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(
                        Icons.search_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('For You', style: TextStyle(fontSize: 15)),
                      Text('Live', style: TextStyle(fontSize: 15)),
                      Text('Following', style: TextStyle(fontSize: 15)),
                      Text('Saved', style: TextStyle(fontSize: 15)),
                      Text('Gaming', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                new videoPost(
                    userName: "Tamer Lai",
                    userImage: "images/1.jpg",
                    feedTime: "1 hr age",
                    feedText:
                        'we are like this we are like this we are like this we are like this we are like this we are like this',
                    feedVideo: 'videos/1.mp4'),
                new videoPost(
                    userName: "Tamer Lai",
                    userImage: "images/1.jpg",
                    feedTime: "1 hr age",
                    feedText:
                        'we are like this we are like this we are like this we are like this we are like this we are like this',
                    feedVideo: 'videos/2.mp4'),
                new videoPost(
                    userName: "Tamer Lai",
                    userImage: "images/1.jpg",
                    feedTime: "1 hr age",
                    feedText:
                        'we are like this we are like this we are like this we are like this we are like this we are like this',
                    feedVideo: 'videos/3.mp4'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// video post

class videoPost extends StatefulWidget {
  String userName;
  String userImage;
  String feedTime;
  String feedVideo;
  String feedText;
  videoPost(
      {this.userName,
      this.userImage,
      this.feedTime,
      this.feedVideo,
      this.feedText});

  @override
  video_PostState createState() => video_PostState();
}

class video_PostState extends State<videoPost> {
  VideoPlayerController _controller;
  Future<void> _init;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('${widget.feedVideo}');
    _init = _controller.initialize();
    _controller.setLooping(false);
    _controller.setVolume(1.0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('${widget.userImage}'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.userName}',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${widget.feedTime}',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                  onPressed: () {
                    print('hi');
                  })
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.feedText,
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
                height: 1.5,
                letterSpacing: .8),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: FutureBuilder(
                future: _init,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                _controller.play();
                              }
                            });
                          },
                          child: VideoPlayer(_controller)),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(offset: Offset(-5, 0), child: makeLove()),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2.5K',
                    style: TextStyle(color: Colors.grey[800], fontSize: 15),
                  )
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(color: Colors.grey[800], fontSize: 13),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButtom(),
              makeCommentButtom(),
              makeShareButtom(),
            ],
          )
        ],
      ),
    );
  }
}
