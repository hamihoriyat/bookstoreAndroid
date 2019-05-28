import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookstore/models/book.dart';

class SelectTypeReadBook extends StatelessWidget{
  final Book book;
  SelectTypeReadBook({Key key, @required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Directionality(textDirection: TextDirection.rtl, child:Scaffold(
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
    onPressed: (){
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
      body: new Column(
        children: <Widget>[
          new Center(

            child: new Container(
              padding: const EdgeInsets.only(top: 20),
              height: 200,
              width: 200,
              child: new CachedNetworkImage(imageUrl: "http://185.237.85.43:3000/"+book.imagePath),
            ),
          ),
          new Center(
      child:
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: MaterialButton(

              minWidth: 200.0,
              color: Color(0xff40833c),
              child: Text("مطالعه کتاب", style: TextStyle(fontWeight: FontWeight.w700,
                  fontFamily: "IRANYekan",
                  color: Colors.white),),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/showBook");
               // checkLogin(context);


              },
            ),
          ),
          ),
          new Center(
            child:
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: MaterialButton(

                minWidth: 200.0,
                color: Color(0xff40833c),
                child: Text("فهرست موضوعی", style: TextStyle(fontWeight: FontWeight.w700,
                    fontFamily: "IRANYekan",
                    color: Colors.white),),
                onPressed: () {
                  // checkLogin(context);


                },
              ),
            ),
          ),
          new Center(
            child:
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: MaterialButton(

                minWidth: 200.0,
                color: Color(0xff40833c),
                child: Text("فهرست مفهومی", style: TextStyle(fontWeight: FontWeight.w700,
                    fontFamily: "IRANYekan",
                    color: Colors.white),),
                onPressed: () {
                  // checkLogin(context);


                },
              ),
            ),
          )
        ],
      ),
    ),
    );
  }

}