import 'package:flutter/material.dart';
//import 'package:bookstore/pages/categoryPage.dart';
//import 'package:bookstore/pages/homePage.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection: TextDirection.rtl,child: Scaffold(
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
//              new GestureDetector(
//                onTap:(){
//                  Navigator.pushReplacementNamed(context, "/homePage");
//                } ,
//              ),
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed:(){
                 // Navigator.pushReplacementNamed(context, "/homePage");
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
        body: Container(
          padding: EdgeInsets.only(top: 12.0),
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              new GestureDetector(
                onTap: (){
                    Navigator.pushReplacementNamed(context, "/categoryPage");
                  //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryPage()));
                },
             child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),

                  Container(
                    // padding: EdgeInsets.all(1.0),

                    child: Image.asset(
                      'assets/images/homePageIcon/icon-10.png',
                      scale: 12.5,

                    ),

                    //,
                    decoration: BoxDecoration(
                        // border: Border(),
                        // border: Border.all(width: 2.5,color: Color(0xff0fbc6d)),
                        // borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        //color: Colors.redAccent,

                        ),
                  ),
                  new Text(
                    'رشته ها',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ),
              new GestureDetector(
                onTap:() {
                  Navigator.pushReplacementNamed(context, "/bookList");
                },
                child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/icon-9.png',
                      scale: 12.5,
                    ),

                    //,
                    decoration: BoxDecoration(
                        // border: Border(),
//                    border: Border.all(width: 2.0,color: Color(0xff0fbc6d)),
//                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        //color: Colors.redAccent,

                        ),
                  ),
                  new Text(
                    'کتاب ها',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )
                ],
              ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/icon-7.png',
                      scale: 12.5,
                    ),
                    //,
                    decoration: BoxDecoration(
                        // border: Border(),
//                    border: Border.all(width: 2.0,color: Color(0xff0fbc6d)),
//                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        //color: Colors.redAccent,

                        ),
                  ),
                  new Text(
                    'راهنما',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/icon-8.png',
                      scale: 12.5,
                    ),
                    //,
                    decoration: BoxDecoration(
                        // border: Border(),
//                    border: Border.all(width: 2.0,color: Color(0xff0fbc6d)),
//                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        //color: Colors.redAccent,

                        ),
                  ),
                  new Text(
                    'گزارش خطا',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/search-1.png',
                      scale: 12.5,
                    ),
                    //,
                    decoration: BoxDecoration(
                      // border: Border(),
//                    border: Border.all(width: 2.0,color: Color(0xff0fbc6d)),
//                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      //color: Colors.redAccent,

                    ),
                  ),
                  new Text(
                    'عبارات کلیدی',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/search-2.png',
                      scale: 12.5,
                    ),
                    //,
                    decoration: BoxDecoration(
                      // border: Border(),
//                    border: Border.all(width: 2.0,color: Color(0xff0fbc6d)),
//                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      //color: Colors.redAccent,

                    ),
                  ),
                  new Text(
                    'عبارات مفهومی',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )

                ],
              )
            ],
          ),
    )
        ));

  }
}
