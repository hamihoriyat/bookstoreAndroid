import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bookstore/models/index.dart';

class BookListService {
  static Future<Map> getBookList(int id) async{
    final response = await http.get('http://185.237.85.43:3000/bookIndex/getIndex/'+id.toString());


    //print(responseBody);
    if(response.statusCode==200){
      var responseBody=json.decode(response.body)['data'];
      List<Index> index=[];
      responseBody.forEach((item){
        index.add(Index.fromJson(item));

      });

      return {
        "index":index
      };
    }
  }
}