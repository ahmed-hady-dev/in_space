import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/planet_model.dart';
import '../components/animated_appbar.dart';

class DetailsView extends StatelessWidget {
  final int planetIndex;

  DetailsView({Key key, this.planetIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _url = planetList[planetIndex].planetLink;
    void _launchURL() async => await canLaunch(_url)
        ? await launch(_url)
        : throw 'Could not launch $_url';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AnimatedAppBar(
          title: planetList[planetIndex].name,
          imagePathAppbar: planetList[planetIndex].imagePathAppbar,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.black,
                alignment: Alignment.bottomLeft,
                child: Text(
                  planetList[planetIndex].planetData,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Read more :',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextButton(
                  onPressed: _launchURL,
                  child: Text(
                    planetList[planetIndex].planetLink,
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
