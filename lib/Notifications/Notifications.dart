import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notifecations',
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
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
                singleNotification(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget singleNotification(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Card(
      child: ListTile(
          title: Text('fdkjfkdjfkdjfkdj kfjd gfklgfglfkglfk'),
          subtitle: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.all(0),
                    child: Text(
                      '12 hours age',
                      style: TextStyle(fontSize: 10),
                    )),
              ],
            ),
          ),
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('images/mb.jpeg'),
          ),
          trailing: IconButton(
              icon: Icon(
                Icons.more_horiz,
              ),
              onPressed: () {
                print('delete');
              })),
    ),
  );
}
