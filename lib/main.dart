import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/all_product_cubit/all_product_cubit.dart';
import 'package:iti_project/cubit/category_cubit/category_cubit.dart';
import 'package:iti_project/cubit/category_list_cubit/category_list_cubit.dart';
import 'package:iti_project/firebase_options.dart';
import 'package:iti_project/views/splash_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Productcubit(),
      child: BlocProvider(
        create: (context) => Categorycubit(),
        child: BlocProvider(
          create: (context) => Categorylistcubit(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        ),
      ),
    );
  }
}
