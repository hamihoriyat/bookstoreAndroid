class Pages{
  String name;
  int pages;
  var bookPages=[];

  Pages.fromJson(Map<String,dynamic> parsedJson){
    name=parsedJson['name'];
    pages=parsedJson['pages'];
    bookPages=parsedJson['bookPages'];
  }
}