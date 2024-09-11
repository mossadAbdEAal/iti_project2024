
import 'package:iti_project/models/product_model.dart';

class CategoryState {}

class Categoryinitial extends CategoryState{
   

}
class Categoryfailure extends CategoryState{
  String errormsg;
  Categoryfailure({required this.errormsg});
}

class Categorysuccess extends CategoryState{
  List<Productelement> productmodel;
   String categoryname;
  Categorysuccess({required this.productmodel,required this.categoryname});
}
class Categoryloading extends CategoryState{


}