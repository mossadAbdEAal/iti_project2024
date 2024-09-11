import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/category_cubit/category_state.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/services/api_services.dart';




class Categorycubit extends Cubit<CategoryState> {
  Categorycubit() : super(Categoryinitial()) {
    getcategoryproduct();
  }
  List<Productelement>? productmodel;
  static String? categoryname;
                        
  getcategoryproduct() async {
    try {
      emit(Categoryloading());
      productmodel = await ApiServices().getcategoryprodycts(categoryname!);
      log(productmodel.toString());
      emit(Categorysuccess(
          productmodel: productmodel!, categoryname: categoryname!));
    } on Exception catch (e) {
      emit(Categoryfailure(errormsg: e.toString()));
    } catch (e) {
      log(e.toString());
      log('dvdpvdsbv');
    }
  }

  
}
