import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

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
//        bottomNavigationBar: new Container(
//          color: Colors.green,
//          child: new Row(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: <Widget>[
//              new IconButton(
//                icon: new Icon(
//                  Icons.home,
//                  color: Colors.white,
//                ),
//                onPressed: () {
//                  Navigator.pushReplacementNamed(context, "/homePage");
//                },
//              ),
//              new IconButton(
//                  icon: new Icon(
//                    Icons.search,
//                    color: Colors.white,
//                  ),
//                  onPressed: null),
//              new IconButton(
//                  icon: new Icon(Icons.favorite, color: Colors.white),
//                  onPressed: null),
//              new IconButton(
//                  icon: new Icon(
//                    Icons.settings,
//                    color: Colors.white,
//                  ),
//                  onPressed: null),
//            ],
//          ),
//        ),
        bottomNavigationBar: bmnav.BottomNav(
          color: Colors.green,
          iconStyle: bmnav.IconStyle(
              color: Colors.white,
              onSelectColor: Colors.black),
          labelStyle: bmnav.LabelStyle(
              textStyle: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'IRANYekan',color: Colors.white),
              onSelectTextStyle: TextStyle(color: Colors.black,fontFamily: 'IRANYekan',fontWeight: FontWeight.w700)),
          items: [
            bmnav.BottomNavItem(Icons.home, label: 'خانه',),
            bmnav.BottomNavItem(Icons.add, label: 'یادداشت'),
            bmnav.BottomNavItem(Icons.navigate_before, label: 'صفحه قبل'),
            bmnav.BottomNavItem(Icons.navigate_next, label: 'صفحه بعد'),
            bmnav.BottomNavItem(Icons.pageview, label: 'شماره صفحه'),
          ],
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
