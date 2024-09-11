import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_cubit.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_state.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/widgets/custom_category_item.dart';

class CustomCategoryGrid extends StatefulWidget {
  const CustomCategoryGrid({super.key});

  @override
  State<CustomCategoryGrid> createState() => _CustomCategoryGridState();
}

class _CustomCategoryGridState extends State<CustomCategoryGrid> {
  late List<Productelement> productelement;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Productcubit(),
      child: BlocBuilder<Productcubit, ProductState>(
        builder: (context, state) {
          if (state is Productsuccess) {
            productelement = state.productmodel;
          }
          if (state is Productfailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errormsg)));
          }
          return state is Productloading
              ? const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()))
              : SliverToBoxAdapter(
                  child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: productelement.length,
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
                            productelement: productelement[index],
                          );
                        }),
                  ),
                ));
        },
      ),
    );
  }
}
