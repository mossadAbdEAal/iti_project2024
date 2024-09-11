import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_cubit.dart';
import 'package:iti_project/views/register_view.dart';
import 'package:iti_project/widgets/custom_home_view_widget.dart';

// ignore: must_be_immutable
class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Productcubit(),
      child: Scaffold(
        backgroundColor: const Color(0xffA3B5B7),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: kprimarycolor,
          title: const Text(
            'Home Screen',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  onPressed: ()  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const RegisterPage();
                    }));
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  )),
                  child: Image.asset(
                    'assets/images/depositphotos_319560848-stock-photo-excited-friends-having-fun-shopping.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: const CustomHomeViewWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
