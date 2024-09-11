import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/widgets/custom_about_page_item.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kprimarycolor,
        centerTitle: true,
        title: const Text(
          'About App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Welcome to our Myshop app!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 3, 44, 180)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Established by:  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.indigoAccent),
                  ),
                  Text(
                    'Eng/Mossad AbdElAal',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Established at:  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.indigoAccent),
                  ),
                  Text(
                    '8/9/2024',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'About the App',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blueAccent),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    maxLines: 12,
                    'Our app is designed to make shopping easy and quick, allowing you to browse and find the products you need effortlessly. With our app, you can explore a wide range of products, search through categories that suit your needs, and keep up with the latest deals.',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'App Features:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blueAccent),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAboutPageItem(
                texttitle: 'User-friendly Interface:',
                textsubtitle:
                    'The app is designed to be simple and easy to use, providing a smooth and enjoyable shopping experience.',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAboutPageItem(
                texttitle: 'Diverse Product Categories: ',
                textsubtitle:
                    'You can browse products across various categories to easily find what you\'re looking for.',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAboutPageItem(
                texttitle: 'Personalized Profile: ',
                textsubtitle:
                    'Manage your personal account, keep track of your favorite items, and review your previous purchases.',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAboutPageItem(
                texttitle: 'Latest Offers: ',
                textsubtitle:
                    'Stay updated with the latest deals and discounts on a wide selection of products.',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Our Goal',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blueAccent),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    maxLines: 12,
                    'We aim to provide an innovative shopping experience that allows users to easily browse products while offering competitive deals tailored to everyone\'s needs. Our goal is to meet your expectations with the best products and services.',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
