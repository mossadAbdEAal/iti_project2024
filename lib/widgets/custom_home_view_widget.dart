import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_cubit.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_state.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/widgets/custom_category_item.dart';

// ignore: must_be_immutable
class CustomHomeViewWidget extends StatefulWidget {
   const CustomHomeViewWidget({super.key});
  

  @override
  State<CustomHomeViewWidget> createState() => _CustomHomeViewWidgetState();
}

class _CustomHomeViewWidgetState extends State<CustomHomeViewWidget> {
  List<Productelement>? productmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    'View all',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ))
            ],
          ),
          BlocProvider(
            create: (context) => Productcubit(),
            child: Expanded(
              child: Container(
                decoration: const BoxDecoration(),
                height: 200,
                child: BlocBuilder<Productcubit, ProductState>(
                  builder: (context, state) {
                     if (state is Productsuccess) {
                    productmodel = state.productmodel;
                  
                }
                if (state is Productfailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.errormsg)));
                }
                    return state is Productloading? const Center(child: CircularProgressIndicator()): Container(
                      decoration: const BoxDecoration(),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: productmodel!.length,
                          itemBuilder: (context, index) {
                            return CustomCategoryItem(
                              productelement: productmodel![index],
                            );
                          }),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
