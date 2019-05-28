class Index{
  int id;
  int pageNum;
  String keyword;
  int bookId;

  Index.fromJson(Map<String,dynamic> parsedJson){
    id=parsedJson['id'];
    pageNum=parsedJson['pageNum'];
    keyword=parsedJson['keyword'];
    bookId=parsedJson['bookId'];
  }
}