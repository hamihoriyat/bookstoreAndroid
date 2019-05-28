import 'package:flutter/material.dart';
import 'package:bookstore/models/book.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookCart extends StatelessWidget {
  final Book book;

  BookCart({@required this.book});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.only(right: 5, left: 5, bottom: 10),
      child: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            height: 200,
            width: screenSize.width,
            child: new CachedNetworkImage(
              imageUrl: "http://185.237.85.43:3000/" + book.imagePath,
              placeholder: (context, url) => new Image(
                    image: AssetImage(
                        "assets/images/bookPagePlaceHolder/placeHolder.png"),
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          new Container(
            alignment: Alignment.centerRight,
            height: 40,
            decoration: new BoxDecoration(
              color: Colors.black45
            ),
            child: new Padding(padding: const EdgeInsets.only(right: 15,left: 10),child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(book.name,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ,fontFamily: "IRANYekan",fontSize: 10),),
                new RichText(
                    maxLines: 1,
                    text: TextSpan(
                        text: book.description,
                        style: TextStyle(fontSize: 9,fontFamily: "IRANYekan",color: Colors.white)
                    ))
              ],
            ),),
          )
        ],
      ),
    );
  }
}
