import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/cubit/category_cubit/category_cubit.dart';
import 'package:iti_project/cubit/category_cubit/category_state.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/widgets/custom_category_item.dart';

// ignore: must_be_immutable
class CustomCategoryView extends StatefulWidget {
  CustomCategoryView({super.key, required this.categoryname});
    String? categoryname;

  @override
  State<CustomCategoryView> createState() => _CustomCategoryViewState();
}

class _CustomCategoryViewState extends State<CustomCategoryView> {
  List<Productelement>? productelement;
 @override
  void initState() {

    super.initState();
     Categorycubit.categoryname = widget.categoryname!;
  }
  @override
  void dispose() {
     widget.categoryname='';
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kprimarycolor,
        title: Text(
          '${widget.categoryname} category',
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => Categorycubit(),
        child: BlocBuilder<Categorycubit, CategoryState>(
          builder: (context, state) {

            if (state is Categorysuccess) {
              Categorycubit.categoryname = widget.categoryname!;
              productelement = state.productmodel;
              
            }
            if (state is Categoryfailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.errormsg)));
            }
           
            return state is Categoryloading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: productelement!.length,
                          clipBehavior: Clip.none,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: .7,
                          ),
                          itemBuilder: (context, index) {
                            return CustomCategoryItem(
                              productelement: productelement![index],
                            );
                          }),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
