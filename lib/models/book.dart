class Book{
  int id;
  String name;
  String description;
  int pages;
  int categoryId;
  String imagePath;

  Book.fromJson(Map<String,dynamic> parsedJson){
    id=parsedJson['id'];
    name=parsedJson['name'];
    description=parsedJson['description'];
    pages=parsedJson['pages'];
    categoryId=parsedJson['categoryId'];
    imagePath=parsedJson['imagePath'];
  }
}