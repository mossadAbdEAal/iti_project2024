import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:iti_project/models/product_model.dart';

class ApiServices {
  final dio = Dio();

  getpopularprodycts() async {
    try {
      final response = await dio.get('https://dummyjson.com/products');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> products = jsondata['products'];

      List<Productelement> productelements = [];
      for (var element in products) {
        Productelement productelement = Productelement.fromJson(element);
        productelements.add(productelement);
      }
      return productelements;
    } on DioException catch (e) {
      log(e.toString());
    }
  }

  getcategoryprodycts(String categoryname) async {
    try {
      final response = await dio
          .get('https://dummyjson.com/products/category/$categoryname');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> products = jsondata['products'];

      List<Productelement> productelements = [];
      for (var element in products) {
        Productelement productelement = Productelement.fromJson(element);
        productelements.add(productelement);
      }
      return productelements;
    } on DioException catch (e) {
      log(e.toString());
    }
  }

  getcategories() async {
    try {
      final response =
          await dio.get('https://dummyjson.com/products/category-list');
      List<dynamic> jsondata = response.data;
      List<String> categories = [];
      for (var category in jsondata) {
        categories.add(category);
      }

      return categories;
    } on DioException catch (e) {
      log(e.toString());
      log('fdsvdvccc');
    }
  }
}
