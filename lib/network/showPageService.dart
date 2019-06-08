import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bookstore/models/pages.dart';



class ShowPageService {
  static Future<Map> getPages() async{
    final response = await http.get('http://185.237.85.43:3000/book/getAll');


    //print(responseBody);
    if(response.statusCode==200){
      var responseBody=json.decode(response.body)['data'];
      List<Pages> books=[];
      responseBody.forEach((item){
        books.add(Pages.fromJson(item));

      });

      return {
        "books":books

      };
    }
  }
}