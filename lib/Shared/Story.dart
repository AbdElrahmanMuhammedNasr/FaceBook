import 'package:flutter/material.dart';

Widget makeStory({storyImage, userImage, userName}) {
  return AspectRatio(
    aspectRatio: 1.4 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.fill,
                  )),
            ),
            Text(
              userName,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}
