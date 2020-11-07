import 'package:Comsol/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget signInContainer(String text, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.025,
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
          bottom: MediaQuery.of(context).size.width * 0.025,
        ),
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Image.asset(
                  image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 0,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                    ),
                    child: Text(
                      'Comsol',
                      style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  signInContainer(
                    'Sign In With Google',
                    'assets/images/google.png',
                  ),
                  signInContainer(
                    'Sign In With Apple',
                    'assets/images/apple.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
