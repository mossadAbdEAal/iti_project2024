class Productelement {
  final int? id;
  final String? title;
  final String? description;
  final String? category;
  final double? price;
  final double? rating;
  final List<Reviews>? reviews;
  final List<dynamic>? imagesurl;
  final String? thumbnail;

  Productelement({
    required this.description,
    required this.category,
    required this.rating,
    required this.id,
    required this.reviews,
    required this.imagesurl,
    required this.thumbnail,
    required this.title,
    required this.price,
  });
  factory Productelement.fromJson(json) => Productelement(
      description: json["description"],
      category: json["category"],
      rating: json["rating"]?.toDouble(),
      id: json["id"],
      reviews: json["reviews"] == null ? [] : List<Reviews>.from(json["reviews"]!.map((x) => Reviews.fromJson(x))),
      imagesurl: json["images"] ,
      thumbnail: json["thumbnail"],
      title: json["title"],
      price: json["price"]?.toDouble());
}

class Reviews {
  final int? rating;
  final String? comment;
  final String? date;
  final String? reviewerName;
  final String? reviewerEmail;
  Reviews(
      {required this.comment,
      required this.date,
      required this.rating,
      required this.reviewerEmail,
      required this.reviewerName});
  factory Reviews.fromJson(json) => Reviews(
        rating: json["rating"],
        comment: json["comment"],
        date: json["date"] ,
        reviewerName: json["reviewerName"],
        reviewerEmail: json["reviewerEmail"],
      );
}
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

// import 'dart:convert';

// Product productFromJson(String str) => Product.fromJson(json.decode(str));

// String productToJson(Product data) => json.encode(data.toJson());

// class Product {
//   final List<ProductElement>? products;
//   final int? total;
//   final int? skip;
//   final int? limit;

//   Product({
//     this.products,
//     this.total,
//     this.skip,
//     this.limit,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         products: json["products"] == null
//             ? []
//             : List<ProductElement>.from(
//                 json["products"]!.map((x) => ProductElement.fromJson(x))),
//         total: json["total"],
//         skip: json["skip"],
//         limit: json["limit"],
//       );

//   Map<String, dynamic> toJson() => {
//         "products": products == null
//             ? []
//             : List<dynamic>.from(products!.map((x) => x.toJson())),
//         "total": total,
//         "skip": skip,
//         "limit": limit,
//       };
// }

// class ProductElement {
//   final int? id;
//   final String? title;
//   final String? description;

//   final double? price;
//   final double? discountPercentage;
//   final double? rating;
//   final int? stock;
//   final List<String>? tags;
//   final String? brand;
//   final String? sku;
//   final int? weight;
//   final String? category;
//   final String? warrantyInformation;
//   final String? shippingInformation;

//   final List<Review>? reviews;

//   final int? minimumOrderQuantity;

//   final List<String>? images;
//   final String? thumbnail;

//   ProductElement({
//     this.id,
//     this.title,
//     this.description,
//     this.category,
//     this.price,
//     this.discountPercentage,
//     this.rating,
//     this.stock,
//     this.tags,
//     this.brand,
//     this.sku,
//     this.weight,
//     this.warrantyInformation,
//     this.shippingInformation,
//     this.reviews,
//     this.minimumOrderQuantity,
//     this.images,
//     this.thumbnail,
//   });

//   factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
//         id: json["id"],
//         title: json["title"],
//         description: json["description"],
//         category: json["category"],
//         price: json["price"]?.toDouble(),
//         discountPercentage: json["discountPercentage"]?.toDouble(),
//         rating: json["rating"]?.toDouble(),
//         stock: json["stock"],
//         tags: json["tags"] == null
//             ? []
//             : List<String>.from(json["tags"]!.map((x) => x)),
//         brand: json["brand"],
//         sku: json["sku"],
//         weight: json["weight"],
//         warrantyInformation: json["warrantyInformation"],
//         shippingInformation: json["shippingInformation"],
//         reviews: json["reviews"] == null
//             ? []
//             : List<Review>.from(
//                 json["reviews"]!.map((x) => Review.fromJson(x))),
//         minimumOrderQuantity: json["minimumOrderQuantity"],
//         images: json["images"] == null
//             ? []
//             : List<String>.from(json["images"]!.map((x) => x)),
//         thumbnail: json["thumbnail"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "description": description,
//         "category": category,
//         "price": price,
//         "discountPercentage": discountPercentage,
//         "rating": rating,
//         "stock": stock,
//         "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
//         "brand": brand,
//         "sku": sku,
//         "weight": weight,
//         "warrantyInformation": warrantyInformation,
//         "shippingInformation": shippingInformation,
//         "reviews": reviews == null
//             ? []
//             : List<dynamic>.from(reviews!.map((x) => x.toJson())),
//         "minimumOrderQuantity": minimumOrderQuantity,
//         "images":
//             images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
//         "thumbnail": thumbnail,
//       };
// }

// class Review {
//   final int? rating;
//   final String? comment;
//   final DateTime? date;
//   final String? reviewerName;
//   final String? reviewerEmail;

//   Review({
//     this.rating,
//     this.comment,
//     this.date,
//     this.reviewerName,
//     this.reviewerEmail,
//   });

//   factory Review.fromJson(Map<String, dynamic> json) => Review(
//         rating: json["rating"],
//         comment: json["comment"],
//         date: json["date"] == null ? null : DateTime.parse(json["date"]),
//         reviewerName: json["reviewerName"],
//         reviewerEmail: json["reviewerEmail"],
//       );

//   Map<String, dynamic> toJson() => {
//         "rating": rating,
//         "comment": comment,
//         "date": date?.toIso8601String(),
//         "reviewerName": reviewerName,
//         "reviewerEmail": reviewerEmail,
//       };
// }
