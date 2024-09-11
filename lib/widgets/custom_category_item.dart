import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iti_project/models/product_model.dart';
import 'package:iti_project/views/category_details.dart';

// ignore: must_be_immutable
class CustomCategoryItem extends StatelessWidget {
  CustomCategoryItem({super.key, required this.productelement});
  Productelement? productelement;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  CategoryDetails(productelement: productelement!,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: '${productelement!.thumbnail}',
                height: 150,
                width: 170,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Text('${productelement!.title}'),
              Text(productelement!.price.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
