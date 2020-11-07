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
