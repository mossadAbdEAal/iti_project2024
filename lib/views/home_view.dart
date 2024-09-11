import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_cubit.dart';
import 'package:iti_project/views/category_view.dart';
import 'package:iti_project/views/main_view.dart';
import 'package:iti_project/views/profile_view.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool? showloginpage = true;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Productcubit(),
      child: Scaffold(
        body: index == 0
            ?  const MainView()
            : index == 1
                ?  const CategoryView()
                :  const ProfileView(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            backgroundColor: kprimarycolor,
            elevation: 0,
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Main'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
