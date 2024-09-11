class CategoryModel {
  List<String> categories;
  CategoryModel({required this.categories});
  factory CategoryModel.fromjson(json) {
    return CategoryModel(categories: json);
  }
}
