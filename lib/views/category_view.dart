import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/cubit/category_cubit/category_cubit.dart';
import 'package:iti_project/widgets/custom_category_grid.dart';
import 'package:iti_project/widgets/custom_category_list.dart';

// ignore: must_be_immutable
class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Category View',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocProvider(
        create: (context) => Categorycubit(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Discover Products',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.list_rounded,
                          size: 30,
                        ))
                  ],
                ),
              ),
              const CustomCategoryList(),
               const CustomCategoryGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
