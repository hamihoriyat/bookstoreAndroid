import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ShowBook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: new Color(0Xff0fbc6d),
          title: new Text("توان ساز",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontFamily: 'IRANYekan')),
        ),
        bottomNavigationBar: new Container(
          color: Colors.green,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/homePage");
                },
              ),
              new IconButton(
                  icon: new Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.white),
                  onPressed: null),
              new IconButton(
                  icon: new Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: null),
            ],
          ),
        ),
        body: new SizedBox(
            height: screenSize.height,
            width: screenSize.width,
            child: new Carousel(
              images: [
                new NetworkImage('http://185.237.85.43:3000/book/2/0001.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0002.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0003.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0004.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0005.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0006.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0007.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0008.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0009.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0010.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0011.jpg'),
                new NetworkImage('http://185.237.85.43:3000/book/2/0012.jpg'),
                //new ExactAssetImage("assets/images/LaunchImage.jpg")
              ],
              showIndicator: false,
              borderRadius: false,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
              autoplay: false,
            )
        ),
      ),
    );
  }
}
