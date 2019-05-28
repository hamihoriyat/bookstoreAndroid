import 'package:flutter/material.dart';
import 'package:bookstore/network/networkRequest.dart';

class CategoryPage extends StatelessWidget {
  NetworkRequest _networkRequest=new NetworkRequest();
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
        body: Container(
          padding: EdgeInsets.only(top: 12.0),
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Decoration(),
                  Container(
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/homePageIcon/icon-4.png',
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
                    'مهندسی برق',
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
                      'assets/images/homePageIcon/icon-2.png',
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
                    'مهندسی شهرسازی',
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
                      'assets/images/homePageIcon/icon-1.png',
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
                    'مهندسی عمران',
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
                      'assets/images/homePageIcon/icon-5.png',
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
                    'مهندسی معماری ',
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
                      'assets/images/homePageIcon/icon-3.png',
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
                    'مهندسی مکانیک ',
                    style: TextStyle(
                        fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                //  new Text(getCategory())

                ],
              )
            ],
          ),
        )
        ));

  }

  getCategory() async{
    Map response=await _networkRequest.get("http://192.168.13.77:3000/category/get");
    print(response['data'][0]['name']);
  }
}