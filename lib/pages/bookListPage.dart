import 'package:flutter/material.dart';
import 'package:bookstore/network/bookListService.dart';
import 'package:bookstore/models/book.dart';
import 'package:bookstore/component/bookCart.dart';
import 'package:bookstore/pages/selectTypeReadBook.dart';


class BookList extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>new BookListState();
}

class BookListState extends State<BookList>{

  List<Book> _books=[];
  @override
  void initState(){
    super.initState();
    _getBooks();
}
Widget moduleListView(){
  return new ListView.builder(
  //  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: const EdgeInsets.only(top: 0),
      itemCount: _books.length,
      itemBuilder: (BuildContext context , int index){
        //return new BookCart(book: _books[index],);
        return ListTile(
          title: new BookCart(book: _books[index]),
           // child: new BookCart(book: _books[index]),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SelectTypeReadBook(book:_books[index]))
            );
          },
        );
      }
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  new Directionality(textDirection: TextDirection.rtl, child:Scaffold(
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
      body: moduleListView(),
    )
    );
  }
  _getBooks() async{
    var response=await BookListService.getBookList();
    print(response['books']);

    setState(() {
      _books.addAll(response['books']);
    });

  }
}