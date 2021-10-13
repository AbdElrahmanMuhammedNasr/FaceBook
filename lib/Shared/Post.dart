import 'package:flutter/material.dart';

Widget makePost({userName, userImage, feedTime, feedImage, feedText}) {
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
                        image: AssetImage(userImage), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
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
                      feedTime,
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
          feedText,
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 15,
              height: 1.5,
              letterSpacing: .8),
        ),
        SizedBox(
          height: 20,
        ),
        feedImage != null
            ? Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(feedImage), fit: BoxFit.fill),
                ),
              )
            : Container(),
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









// /////////////////

Widget makeLike() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Icon(
        Icons.thumb_up,
        size: 12,
        color: Colors.white,
      ),
    ),
  );
}

Widget makeLove() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.red),
    ),
    child: Center(
      child: Icon(
        Icons.favorite,
        size: 12,
        color: Colors.white,
      ),
    ),
  );
}



















// ////////////////



Widget makeLikeButtom() {
  bool showReaction = true;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // showReaction ? Text('i am heer') : Container(),
        InkWell(
          onTap: () => {print('like')},
          onLongPress: () {
            showReaction = true;
            print('long');
          },
          child: Icon(
            Icons.thumb_up,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Like',
          style: TextStyle(color: Colors.grey),
        )
      ],
    )),
  );
}

Widget makeCommentButtom() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.chat,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Comment',
          style: TextStyle(color: Colors.grey),
        )
      ],
    )),
  );
}

Widget makeShareButtom() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.share,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Share',
          style: TextStyle(color: Colors.grey),
        )
      ],
    )),
  );
}
