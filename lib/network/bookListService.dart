import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bookstore/models/book.dart';

class BookListService {
  static Future<Map> getBookList() async{
    final response = await http.get('http://185.237.85.43:3000/book/getAll');


    //print(responseBody);
    if(response.statusCode==200){
      var responseBody=json.decode(response.body)['data'];
      List<Book> books=[];
      responseBody.forEach((item){
        books.add(Book.fromJson(item));

      });

      return {
        "books":books

      };
    }
  }
  }