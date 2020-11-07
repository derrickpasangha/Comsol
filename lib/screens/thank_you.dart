import 'package:Comsol/screens/home.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '',
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            Icons.close,
            color: Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Text(
            'Thank you for raising the issue!\n\nWe\'ll get back to you once the issue is verified.',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.035,
            ),
          ),
        ),
      ),
    );
  }
}
