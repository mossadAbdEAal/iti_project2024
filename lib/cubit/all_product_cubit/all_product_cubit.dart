import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_state.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/services/api_services.dart';

class Productcubit extends Cubit<ProductState> {
  Productcubit() : super(Productinitial()) {
    getallproduct();
  }
  List<Productelement>? productmodel;
  getallproduct() async {
    try {
     
      emit(Productloading());
      productmodel = await ApiServices().getpopularprodycts();
       
      emit(Productsuccess(productmodel: productmodel!));
    } on Exception catch (e) {
      emit(Productfailure(errormsg: e.toString()));
    } catch (e) {
      log(e.toString());
     
      
    }
  }
}
