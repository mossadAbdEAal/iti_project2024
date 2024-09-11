import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/category_list_cubit/category_list_cubit.dart';
import 'package:iti_project/cubit/category_list_cubit/category_list_state.dart';
import 'package:iti_project/views/custom_category_view.dart';



String categoryname1 = 'kitchen-accessories';

class CustomCategoryList extends StatefulWidget {
  const CustomCategoryList({super.key});

  @override
  State<CustomCategoryList> createState() => _CustomCategoryListState();
}

class _CustomCategoryListState extends State<CustomCategoryList> {
  List<String>? categories;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Categorylistcubit(),
      child: BlocBuilder<Categorylistcubit, CategorylistState>(
        builder: (context, state) {
          if (state is Categorylistsuccess) {
            categories = state.categories;
          }
          if (state is Categorylistfailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errormsg)));
          }
          return state is Categorylistloading
              ? const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()))
              : SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(),
                      child:   ListView.builder(
                        itemCount: categories?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CustomCategoryView(categoryname: categories![index]);
                              }));
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 0, bottom: 0),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 245, 231, 231),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  categories![index],
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          );
                        }),
                    ),
                  ),
                );
        },
      ),
    );
  }
}

  // ListView.builder(
  //                       itemCount: categories?.length,
  //                       scrollDirection: Axis.horizontal,
  //                       itemBuilder: (context, index) {
  //                         return Container(
  //                           padding: const EdgeInsets.only(
  //                               left: 30, right: 30, top: 0, bottom: 0),
  //                           margin: const EdgeInsets.only(right: 10),
  //                           decoration: const BoxDecoration(
  //                               color: Color.fromARGB(255, 245, 231, 231),
  //                               borderRadius:
  //                                   BorderRadius.all(Radius.circular(30))),
  //                           child: Center(
  //                             child: Text(
  //                               categories![index],
  //                               style: const TextStyle(color: Colors.black),
  //                             ),
  //                           ),
  //                         );
  //                       }),