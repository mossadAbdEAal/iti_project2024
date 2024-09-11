
import 'package:iti_project/models/product_model.dart';

class ProductState {}

class Productinitial extends ProductState{}
class Productfailure extends ProductState{
  String errormsg;
  Productfailure({required this.errormsg});
}
class Productsuccess extends ProductState{
  List<Productelement> productmodel;
  Productsuccess({required this.productmodel});
}
class Productloading extends ProductState{}