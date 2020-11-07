import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget drawerButton(IconData icon, String label) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      child: FlatButton.icon(
        minWidth: double.infinity,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        color: Colors.blue[300],
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: MediaQuery.of(context).size.height * 0.035,
        ),
        label: Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.025,
            ),
          ),
        ),
      ),
    );
  }

  Widget announcementCard(
      String announcement, IconData icon, Color iconColor, String time) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.025,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.025,
      ),
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.05,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue[400],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              bottom: MediaQuery.of(context).size.height * 0.015,
            ),
            child: Text(
              announcement,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.028,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text(
          'Announcements',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          announcementCard(
            'There will be a power cut in 4th Phase, Yelahanka New Town tomorrow from 9 A.M to 12 P.M. We regret the inconvenience caused.',
            Icons.electrical_services,
            Colors.amber,
            '7th Nov, 12:03',
          ),
          announcementCard(
            'Water will be supplied from 10 A.M to 3 P.M today throughout the city.',
            Icons.waterfall_chart,
            Colors.blue,
            '6th Nov, 08:30',
          ),
          announcementCard(
            'Garbage will be collected as usual today. Please keep your wet waste bins ready.',
            Icons.delete,
            Colors.grey,
            '6th Nov, 08:30',
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
            ),
            drawerButton(Icons.home, 'Home'),
            drawerButton(Icons.speaker_notes, 'Raise Issue'),
            drawerButton(Icons.ballot, 'Vote'),
            drawerButton(Icons.people, 'Group'),
          ],
        ),
      ),
    );
  }
}
