import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/category_list_cubit/category_list_state.dart';
import 'package:iti_project/services/api_services.dart';

class Categorylistcubit extends Cubit<CategorylistState> {
  Categorylistcubit() : super(Categorylistinitial()) {
    getcategories();
  }
  List<String>? categories;


  getcategories() async {
    try {
      emit(Categorylistloading());
      categories = await ApiServices().getcategories();
  
      emit(Categorylistsuccess(
          categories: categories!));
    } on Exception catch (e) {
      emit(Categorylistfailure(errormsg: e.toString()));
      log('1111');
    } catch (e) {
      log(e.toString());
      log('2222');
    }
  }
}
