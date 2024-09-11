import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/models/product_model.dart';

// ignore: must_be_immutable
class CategoryDetails extends StatelessWidget {
   CategoryDetails({super.key,required this.productelement});
  Productelement productelement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const  IconThemeData(color: Colors.white),
        backgroundColor: kprimarycolor,
        centerTitle: true,
        title: const Text(
          'Category Details ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      '${productelement.thumbnail}',
                  height: 300,
                  width: 250,
                  placeholder: (context, url) =>
                      const Center(child:  CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 35,
                          ),
                          const Text(
                            '221',
                            style: TextStyle(color: Colors.amber, fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Color.fromARGB(255, 245, 231, 231)),
                                child: const Row(
                                  children: [
                                    Text('145',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text('Reviews',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                )),
                          ),
                        ],
                      ),
                  
                     const  SizedBox(height: 20,),
                       Text('${productelement.title}',style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                       const  SizedBox(height: 10,),
                       Text(
                        maxLines: 3,
                      '${productelement.description}',
                        style: const TextStyle(fontSize: 20,color: Colors.black45,overflow: TextOverflow.ellipsis),
                      ),
                       const  SizedBox(height:30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Row(
                            children: [
                               const Text(r'$',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                               Text('${productelement.price}',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Container(
                                  padding: const EdgeInsets.only(left: 60,right: 60,top: 15,bottom: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.amber),
                                  child: const Text('Add to cart')))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
