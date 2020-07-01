import 'package:GGdemo/data/category_data.dart';
import 'package:GGdemo/models/product.dart';
import 'package:GGdemo/models/data_list.dart';

var categoriesMap = categoriesList.categoriesList.asMap();

final DataList productsList = new DataList(
  productsList: [
    Product(
      productId: "1",
      title: "Rosalina Castaldi",
      productPhoto: "assets/images/e.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[0],
    ),
    Product(
      productId: "2",
      title: "Nakisha Tiano",
      productPhoto: "assets/images/i.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[1],
    ),
    Product(
      productId: "3",
      title: "Jeanine Chiarello",
      productPhoto: "assets/images/j.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[2],
    ),
    Product(
      productId: "4",
      title: "Janey Eudy",
      productPhoto: "assets/images/k.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[3],
    ),
    Product(
      productId: "5",
      title: "Vivien Lietz",
      productPhoto: "assets/images/h.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[4],
    ),
    Product(
      productId: "6",
      title: "Rosius Ateh",
      productPhoto: "assets/images/a.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[5],
    ),
    Product(
      productId: "7",
      title: "Rosalina Castaldi",
      productPhoto: "assets/images/e.jpeg",
      price: 10.0,
      postedDate: DateTime.now(),
      categoryId: categoriesMap[6],
    )
  ]
);