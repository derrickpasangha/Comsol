import 'package:flutter/material.dart';

class Vote extends StatefulWidget {
  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  Widget voteCard(
    String description,
    List<String> urls,
  ) {
    List<Widget> generateImages() {
      List<Widget> images = [];
      urls.forEach((url) {
        images.add(Container(
          height: MediaQuery.of(context).size.height * 0.18,
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          child: Image.network(
            url,
            fit: BoxFit.fitHeight,
          ),
        ));
      });
      return images;
    }

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
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: generateImages(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white30,
            ),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              bottom: MediaQuery.of(context).size.height * 0.015,
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.028,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.0125,
                    left: MediaQuery.of(context).size.width * 0.025,
                    right: MediaQuery.of(context).size.width * 0.025,
                    bottom: MediaQuery.of(context).size.width * 0.0125,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.0125,
                    left: MediaQuery.of(context).size.width * 0.025,
                    right: MediaQuery.of(context).size.width * 0.025,
                    bottom: MediaQuery.of(context).size.width * 0.0125,
                  ),
                  child: Icon(
                    Icons.thumb_down,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
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
          'Vote',
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: [
          voteCard(
            'The allasandra lake is being used as a sewage dump. There is an open pipe at one corner of the lake from where dirty water keeps flowing. Many people come to this lake every morning and have complained about the same. The stink has now become unbearable. We hope the authorities hear our plea and block the pipe. By cleaning up the lake many more people will come to the lake and enjoy the lovely atmosphere.',
            [
              'https://static.asianetnews.com/images/b0cf662b-c58e-40d3-afc5-7ee9fad30caa/image_710x400xt.jpg',
              'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-63q1vo57p5755fj2nhj3351j15-20190214071523.Medi.jpeg',
            ],
          )
        ],
      ),
    );
  }
}
