import 'dart:convert';

import 'package:http/http.dart' as http;


class NetworkRequest {

  //final JsonDecoder _decoder = new JsonDecoder();


   Future<Map> get (String url)  async {
     final response=await http.get(url);
     var responseBody=json.decode(response.body);
     final statusCode=response.statusCode;
     return responseBody;
//   // return  await http.get(url).then((http.Response response) {
//      final String res = response.body;
//      final int statusCode = response.statusCode;
//
//      if (statusCode < 200 || statusCode > 400 || json == null) {
//        throw new Exception("Error while fetching data");
//      }
//      //print(res) ;
//      return json.decode(res);
//      //return res;
//    });

  }
  Future<Map> post(String url, Map body) async{

     final response=await http.post(url,body: body);
     var responseBody=json.decode(response.body);
     final statusCode=response.statusCode;
     return responseBody;
     /* return await http
        .post(url, body: body)
        .then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return json.decode(res);
    });*/
  }

}